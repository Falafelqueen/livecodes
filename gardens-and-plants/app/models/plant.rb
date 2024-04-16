class Plant < ApplicationRecord
  belongs_to :garden

  has_many :plant_tags
  has_many :tags, through: :plant_tags
  # Now we can do -> plant.tags
  validates :name, presence: true
end
