require_relative "gastronomic_restaurant"
require_relative "fastfood_restaurant"

le_gavroche = GastronomicRestaurant.new('le gavroche', 50, 'london', 'french', 2) # instance of GastronomicRestaurant
burger_king = FastfoodRestaurant.new('burger king', 100, 'london', 'burgers', 5) # instance of FastfoodRestaurant

p le_gavroche.name
le_gavroche.book("Lucien")
le_gavroche.print_clients

p burger_king.name
burger_king.book("Arthur")
burger_king.book("Lucien")
burger_king.print_clients
