class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.datetime :date_found, default: Time.now

      t.timestamps
    end
  end
end
