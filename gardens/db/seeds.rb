# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up the db"

Garden.destroy_all

puts "Creating gardens"

japanese = Garden.create!(name: "Japanese garden", banner_url: "https://plus.unsplash.com/premium_photo-1661954483883-edd65eac3577?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
Garden.create!(name: "French garden", banner_url: "https://images.unsplash.com/photo-1558593217-00e9ce11b8d6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

Plant.create!(name: "Tulip", garden: japanese, category: "outdoor", image_url: "https://images.unsplash.com/photo-1468327768560-75b778cbb551?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")


tags = ["indoor", "big", "small", "tulip", "perennial", "local", "sunny"]

tags.each do |tag|
  t = Tag.new(name: tag)
  t.save!
end
