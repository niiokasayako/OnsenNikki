class Information < ApplicationRecord
  has_many :onsens, dependent: :destroy
end
