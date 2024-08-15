class Completion < ApplicationRecord
  belongs_to :plant
  belongs_to :chore
  validates :chore_id, uniqueness: { scope: :plant_id }
end
