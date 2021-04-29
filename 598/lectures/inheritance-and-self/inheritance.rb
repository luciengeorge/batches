require_relative 'fastfood_restaurant'
require_relative 'gastronomic_restaurant'

burger_king = FastfoodRestaurant.new('burger king', 30, 'shoreditch', 'burgers', 10)

helen = GastronomicRestaurant.new('Hélène Darroze', 10, 'london', 'french', 3)

# p burger_king
# p helen

burger_king.book('lucien')
burger_king.book('alex')
puts "#{burger_king.name}'s clients:"
burger_king.print_clients

puts ""
helen.book('alex')
puts "#{helen.name}'s clients:"
helen.print_clients
