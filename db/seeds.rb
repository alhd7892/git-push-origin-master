# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Restaurant.destroy_all

puts 'Creating restaurants...'
surpriz = { name: 'Surpriz', address: '110 Rue Oberkampf, 75011 Paris', category: 'french' }
pny =  { name: 'Paris New York Burger', address: '96 Rue Oberkampf, 75011 Paris', category: 'belgian' }
pokawa = { name: 'Pokawa', address: '56 bis Rue Oberkampf, 75011 Paris', category: 'japanese' }
camion_qui_fume = { name: 'Camion qui fume', address: '66 Rue Oberkampf, 75011 Paris', category: 'italian' }
scoop_me_a_cookie = { name: 'Scoop me a cookie', address: '57 Rue Oberkampf, 75011 Paris', category: 'french' }

[surpriz, pny, pokawa, camion_qui_fume, scoop_me_a_cookie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
