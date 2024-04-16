# Active Record

# restaurants , name, id, address
# model Restaurant
# restaurant.name, restaurant.id, restuaraunt.address

# CRUD

# create
# INSERT INTO restaurants ..
# Restaurant.create(name: "Tasca Vegana", address: "Barcelona")
# restaurant = Restaurant.new(name: "Tasca Vegana")
# restaurant.address = "Barcelona"
# restaurant.save

# read
# all restaurants that exist in the DB -> SELECT * FROM restaurants
# Restaurant.all

# find some particular restaurant -> read one by id -> SELECT * FROM restaurants WHERE id = 1
# Restaurant.find(1)
# Restaurant.find_by(name: "Pizza Hut")

# find many by some condition -> SELECT * FROM restaurants WHERE address = 'Barcelona'
# Restaurant.where(address: 'Barcelona')
# Restaurant.where(id: 1).first

# update
# restaurant = Restaurant.find(1)
# restaurant.update(name: "Pizza hut 2")
# Restaurant.update_all(name: "xx")

# delete
# restaurant = Restaurant.find(1)
# restaurant.destroy
# Restaurant.destroy_all

# class Router
#   while running
#     puts "What do you wanna do?"
#     action = gets.chomp

#     case action
#     when "list" then controller.list
#     end
#   end
# end
