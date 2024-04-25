class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags
  has_many :tags, through: :plant_tags
  # plant.tags
  validates :name, presence: true
end
