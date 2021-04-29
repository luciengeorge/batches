require_relative 'chef'

class Restaurant
  # if you call self from within an instance method
  # then self represents the instance of that class
  # if you call self from within a class methid
  # then self represents that class
  # encapsulation
  attr_reader :name, :location, :chef#, :capacity
  # attr_writer :capacity
  attr_accessor :capacity
  attr_writer :cuisine
  # data and functionalities
  def initialize(name, capacity, location, cuisine, chef_name)
    # Restaurant.new
    # name
    @name = name
    # capacity
    @capacity = capacity
    # location
    @location = location
    # cuisine
    @cuisine = cuisine
    @clients = []
    @chef = Chef.new(chef_name, self)
  end

  # def chef
  #   return @chef
  # end

  # class method
  # def Restaurant.cuisines
  def self.cuisines
    [
      'japanese',
      'thai',
      'french',
      'italian'
    ]
  end

  def open?
    # Time.now.hour.in?(11..16)
    # (11..16).include?(Time.now.hour)
    Time.now.hour >= 11 && Time.now.hour <= 16
  end

  def who_am_i
    self
  end

  def closed?
    !open?
  end

  def book(client_name)
    @clients << client_name
  end

  def print_clients
    @clients.each do |client|
      puts "- #{client}"
    end
  end

  # def name
  #   return @name
  # end

  # def location
  #   return @location
  # end

  # def capacity=(new_capacity)
  #   @capacity = new_capacity
  # end
end

# class ParentClass
# end

# class ChildClass < ParentClass
# end







