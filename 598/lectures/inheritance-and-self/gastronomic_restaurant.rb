require_relative 'restaurant'

class GastronomicRestaurant < Restaurant
  def initialize(name, capacity, location, cuisine, chef_name, stars)
    # Restaurant.new
    # name
    # like an alias to the Restaurant#initialize method
    # initialize(name, capacity, location, cuisine)
    super(name, capacity, location, cuisine, chef_name)
    @stars = stars
  end

  def print_clients
    puts "You don't have access to the client's list"
  end
end
