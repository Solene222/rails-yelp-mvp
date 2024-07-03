# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0611224455", category:"français"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0611224455", category:"french"}
indian_food = {name: "Indian", address: "Paris", phone_number: "0611224455", category:"indian"}
chinese_food = {name: "Chinese", address: "Lille", phone_number: "0611224455", category:"chinese"}
corean_food = {name: "Corean", address: "Bordeaux", phone_number: "0611224455", category:"corean"}

[dishoom, pizza_east, indian_food, chinese_food, corean_food].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
