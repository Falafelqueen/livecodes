puts "Seeding db"

require 'faker'

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city
  )
end

