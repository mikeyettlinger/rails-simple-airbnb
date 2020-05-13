# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"

Flat.destroy_all

puts "creating flats"

Flat.create!(
  name: "Lovely seaside flat",
  address: "3 Beach Rd",
  description: "beatiful sea view with lovely terrace and balcony",
  price_per_night: rand(50..100),
  number_of_guests: rand(2..4)
)

Flat.create!(
  name: "Lovely town flat",
  address: "3 Town Rd",
  description: "beatiful town view with modern interior",
  price_per_night: rand(50..100),
  number_of_guests: rand(2..4)
)

Flat.create!(
  name: "Lovely countryside house",
  address: "3 Country Rd",
  description: "large house with big grounds and an orchard",
  price_per_night: rand(50..100),
  number_of_guests: rand(2..4)
)

Flat.create!(
  name: "Lovely inner city flat",
  address: "3 City Rd",
  description: "small but chic modern flat in the centre of the city",
  price_per_night: rand(50..100),
  number_of_guests: rand(2..4)
)

puts "enjoy your stay!"
