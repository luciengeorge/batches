require_relative "restaurant"

class GastronomicRestaurant < Restaurant
  def initialize(name, capacity, city, cuisine, stars)
    super(name, capacity, city, cuisine)
    @stars = stars
  end

  # overrides print_client method of the Restaurant class
  def print_clients
    puts "You don't have access to the client list"
  end
end
