class Plant < ApplicationRecord
  belongs_to :garden
  has_many :completions
  has_many :chores, through: :completions
  validates :name, presence: true
  validates :image_url, presence: true, format: { with: /http.*/ }
end
