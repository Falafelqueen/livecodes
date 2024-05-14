# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning up the db"

Pet.destroy_all

Pet.create!(name: 'Good boy 2', species: 'cat', found_on: Date.today, found: true)
Pet.create!(name: 'Linda', species: 'dog', found_on: Date.today, found: true)
Pet.create!(name: 'Sassy', species: 'horse', found_on: Date.today, found: true)

puts "created #{Pet.count} pets"
