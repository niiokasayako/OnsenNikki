class Review < ApplicationRecord

  belongs_to :onsen
  belongs_to :user
  has_many :post_comments, dependent: :destroy

  # 星の評価の空を禁止する、尚且つ1以上、5未満
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
end
