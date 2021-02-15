class Exercise < ApplicationRecord
  has_many :item_exercises, dependent: :destroy
end
