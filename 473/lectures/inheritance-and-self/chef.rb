class Chef
  attr_reader :name, :restaurant
  def initialize(name, restaurant)
    @name = name # => instance of String
    @restaurant = restaurant # => instance of Restaurant
  end
end
