class AddSpeciesToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :species, :string
  end
end
