class Onsen < ApplicationRecord

  has_many :onsen_informations, dependent: :destroy
  has_many :informations, through: :onsen_informations
  has_many :stamps, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :address, presence: true
  validates :opening_hours, presence: true
  validates :price, presence: true

  accepts_nested_attributes_for :onsen_informations, allow_destroy: true


  def self.search(search,informasion_ids)
    if search != ""
        if informasion_ids
          Onsen.joins(:onsen_informations).where('address like?',"%#{search}%").where("onsen_informations.information_id in(?)",informasion_ids).distinct
        else
          Onsen.joins(:onsen_informations).where('address like?',"%#{search}%").distinct
        end
    else
        if informasion_ids
            Onsen.joins(:onsen_informations).where("onsen_informations.information_id in(?)",informasion_ids).distinct
        else
            Onsen.all
        end
    end
  end
  
  def stamped_by?(user)
    stamps.exists?(user_id: user.id)
  end

end
