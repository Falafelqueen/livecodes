class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "horse", "chicken", "turtle", "marco"]
  validates :name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0 }
  validates :species, inclusion: { in: Pet::SPECIES }
end
