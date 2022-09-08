class Information < ApplicationRecord
  has_many :onsen_informations, dependent: :destroy
end
