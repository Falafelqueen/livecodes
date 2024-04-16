require 'faker'

puts "Creating restaurants"
10.times do
  Restaurant.create!(
    name: Faker::Coffee.blend_name,
    city: Faker::Address.city
  )
end

puts "Done creating restaurants"
