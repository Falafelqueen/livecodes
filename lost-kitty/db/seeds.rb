# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding the db"

Pet.destroy_all

3.times do
  Pet.create!(
    name: Faker::Creature::Dog.name,
    age: rand(0..17),
    species: 'dog',
    found_on: Date.today - rand(0..10),
    injured: [true, false].sample,
    gender: ["male", "female", "-"].sample
  )
end

3.times do
  Pet.create!(
    name: Faker::Creature::Cat.name,
    age: rand(0..17),
    species: 'cat',
    found_on: Date.today - rand(0..10),
    injured: [true, false].sample,
    gender: ["male", "female", "-"].sample
  )
end

puts "Finished creating #{Pet.count} pets"
