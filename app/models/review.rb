class Review < ApplicationRecord
  
  belongs_to :onsen, dependent: :destroy
  belongs_to :user, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
end
