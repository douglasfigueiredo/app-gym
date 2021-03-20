class User < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false }
  has_one :profile, dependent: :destroy
  belongs_to :my_trainings
end
