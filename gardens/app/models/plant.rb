class Plant < ApplicationRecord
  CATEGORY = %w(indoor outdoor)
  belongs_to :garden

  # we want to be able to destroy a plan, even if it is taged with stuff
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  validates :category, inclusion: {in: CATEGORY}
  validates :name, presence: true
  validates :name, uniqueness: {scope: :garden_id }
end
