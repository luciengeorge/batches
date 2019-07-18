require_relative "restaurant"

class FastfoodRestaurant < Restaurant
  def initialize(name, capacity, city, cuisine, preparation_time)
    super(name, capacity, city, cuisine) # initialize method of parent class
    @preparation_time = preparation_time
  end

  # overrides open? method of Restaurant class
  def open?
    # super calls the open? method in the restaurant class (parent class)
    super ||
      (Time.now.hour >= 12 && Time.now.hour <= 16)
  end
end
