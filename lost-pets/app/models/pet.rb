class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "turtle", "rabit", "horse"]
  validates :name, presence: true
  validates :species, inclusion: {in: Pet::SPECIES}
end
