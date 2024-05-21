class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  # cant tag a plant with the same tag twice
  validates :plant_id, uniqueness: {scope: :tag_id}
end
