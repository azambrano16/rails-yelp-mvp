# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

mcdonalds = { name: 'mcdonalds', address: 'madrid', phone_number: '678900654', category: 'fast food' }
mediterranae = { name: 'mediterranae', address: 'madrid', phone_number: '677550664', category: 'mediterranean' }
ginos = { name: 'ginos', address: 'madrid', phone_number: '644455544', category: 'italian'}
telepizza = { name: 'telepizza', address: 'madrid', phone_number: '673330664', category: 'fastfood'}
taggliatella = { name: 'taggliatella', address: 'madrid', phone_number: '672222664', category: 'italian' }


[mcdonalds, mediterranae, ginos, telepizza, taggliatella].each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
  puts "Created #{restaurant.name}"
end
