require_relative "restaurant"

# nandos is an instance of Restaurant
nandos = Restaurant.new('Nandos', 40, 'london', 'chicken', 'Arthur')

# arthur is an instance of Chef class
arthur = nandos.chef

p nandos

# printing name of chef instance and name of restaurant instance that belongs to the chef
puts "#{arthur.name} is the chef of: #{arthur.restaurant.name}"

