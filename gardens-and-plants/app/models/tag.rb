class Tag < ApplicationRecord

  # add some validations
  validates :name, presence: true, uniqueness: true
end
