# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
tour_dargent = { name: "La Tour d'Argent", address: "Tour Eiffel, Paname", category: "french" }
emporietto = { name: "Emporietto", address: "Nantes", category: "italian" }
leon = { name: "Leon de Bruxelles", address: "Bruxelles", category: "belgian" }
delices = { name: "Aux delices d'Asie", address: "every city in the world", category: "chinese" }
kebab = { name: "Maitre Kebabier", address: "a cote du 10 passage de la poule noire", category: "french" }


[tour_dargent, emporietto, leon, delices, kebab].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
