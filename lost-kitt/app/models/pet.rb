class Pet < ApplicationRecord
  SPECIES = %w(cat dog snake snails horse)
  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}
end
