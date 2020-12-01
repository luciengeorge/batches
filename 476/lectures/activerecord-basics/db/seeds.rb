# This is where you can create initial data for your app.
require 'faker'

100.times do |i|
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, rating: rand(0..5))
  restaurant.save
  puts "creating restaurant #{restaurant.name}"
end
