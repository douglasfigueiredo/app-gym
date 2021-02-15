class Training < ApplicationRecord
  has_many :item_trainings, dependent: :destroy
end
