require_relative 'fast_food_restaurant'
require_relative 'gastronomic_restaurant'

burger_king = FastFoodRestaurant.new('burger king', 'london', 100, 'burgers', 5)
trinity = GastronomicRestaurant.new('trinity', 'london', 30, 'modern european', 1)

burger_king.name # => burger king
trinity.name # => trinity
# p burger_king
# p trinity

# puts "#{burger_king.name} is in #{burger_king.location}"
# puts "#{trinity.name} is in #{trinity.location}"

puts "alex is booking burger king..."
burger_king.book('Alex')
puts "arthur is booking burger king..."
burger_king.book('Arthur')
burger_king.print_clients
puts "lucien is booking trinity..."
trinity.book('lucien')
trinity.print_clients
