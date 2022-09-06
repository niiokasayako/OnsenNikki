class Review < ApplicationRecord
  
  belongs_to :onsen, dependent: :destroy
  belongs_to :user, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
