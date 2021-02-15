class ItemTraining < ApplicationRecord
  belongs_to :training
  belongs_to :exercise
end
