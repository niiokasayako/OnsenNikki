class Onsen < ApplicationRecord
  has_one_attached :image
  
  belongs_to :information
  has_many :stamps, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
