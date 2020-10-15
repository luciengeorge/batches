require_relative 'chef'

class Restaurant
  attr_reader :name, :location, :clients
  # attr_reader :capacity
  # attr_writer :capacity
  attr_accessor :capacity # encapsulation
  # YAGNI => You ain't gonna need it
  # state ?
  def initialize(name, location, capacity, cuisine, chef_name)
    @name = name
    @location = location
    @capacity = capacity
    @cuisine = cuisine
    # @open = true
    @clients = []
    # self represents the restaurant instance being initialized
    @chef = Chef.new(chef_name, self)
  end

  def print_self
    return self
  end

  def self.cuisines
    ['french', 'italian', 'mexican', 'lebanese']
  end

  def book(client_name)
    @clients << client_name
  end

  def print_clients
    @clients.each do |client|
      puts "- #{client}"
    end
  end

  def open?
    # if Time.now.hour >= 9 && Time.now.hour <= 22
    #   return true
    # else
    #   return false
    # end
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def open_or_close
    # if open? # if true == true
    #   return 'open'
    # else
    #   return 'closed'
    # end
    return open? ? 'open' : 'closed'
  end

  # def name
  #   return @name
  # end

  # def location
  #   return @location
  # end
end
