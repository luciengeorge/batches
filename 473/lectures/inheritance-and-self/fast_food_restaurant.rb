require_relative 'restaurant'

class FastFoodRestaurant < Restaurant
  def initialize(name, location, capacity, cuisine, prep_time)
    super(name, location, capacity, cuisine) # calls initialize method in Restaurant (parent) class
    @prep_time = prep_time
  end

  def open?
    # Time.now.hour >= 18 && Time.now.hour <= 22\
    # || Time.now.hour >= 11 && Time.now.hour <= 16

    # calls open? in the Restaurant (parent) class
    super || Time.now.hour >= 11 && Time.now.hour <= 16
  end
end
