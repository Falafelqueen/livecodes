# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning up the db...🤍"
# Garden.destroy_all

# Garden.create!(name: 'Japanese', banner_url: "https://plus.unsplash.com/premium_photo-1661954483883-edd65eac3577?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# Garden.create!(name: 'Canadian', banner_url: "https://images.finegardening.com/app/uploads/2018/01/23155603/img_0063_1.jpg")

# puts "Done creating #{Garden.count} gardens"

chores = ["fertilize", "water", "mist", "repot", "throw away", "harvest"]

chores.each do |chore|
  Chore.create!(name: chore)
end
