class Onsen < ApplicationRecord
  has_one_attached :image

  has_many :onsen_informations, dependent: :destroy
  has_many :informations, through: :onsen_informations
  has_many :stamps, dependent: :destroy
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :onsen_informations, allow_destroy: true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

end
