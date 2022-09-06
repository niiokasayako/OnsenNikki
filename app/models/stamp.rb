class Stamp < ApplicationRecord
  
  belongs_to :user, dependent: :destroy
  belongs_to :onsen, dependent: :destroy
end
