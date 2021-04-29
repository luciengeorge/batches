require_relative 'restaurant'

class FastfoodRestaurant < Restaurant
  def initialize(name, capacity, location, cuisine, chef_name, preparation_time)
    # Restaurant.new
    # name
    super(name, capacity, location, cuisine, chef_name)
    @preparation_time = preparation_time
  end

  # same name as Restaurant#open? method
  def open?
    # Time.now.hour >= 11 && Time.now.hour <= 16
    super || Time.now.hour >= 18 && Time.now.hour <= 23
  end

  def cuisines
    # array
    parent_cuisines = super
    parent_cuisines << 'burgers'
  end
end
