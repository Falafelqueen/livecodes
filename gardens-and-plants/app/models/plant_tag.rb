class PlantTag < ApplicationRecord
  belongs_to :plant
  # plant_tag.plant
  belongs_to :tag
  # plant_tag.tag = Tag.find(plant_tag.id)
  # a plant can be tagged only once with one particular tag
  validates :plant_id, uniqueness: {scope: :tag_id}
end
