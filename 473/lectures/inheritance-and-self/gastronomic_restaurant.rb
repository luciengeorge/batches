require_relative 'restaurant'

class GastronomicRestaurant < Restaurant
  def initialize(name, location, capacity, cuisine, stars) # NOT DRY
    super(name, location, capacity, cuisine) # calls initialize method in Restaurant (parent) class
    @stars = stars
  end

  def print_clients
    puts "You don't have access"
  end
end
