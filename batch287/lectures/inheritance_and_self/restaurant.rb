require_relative "chef"

class Restaurant
  # Encapsulation: By default the state of the class is hidden to the outside world
  # only add attr_reader, attr_writer, or attr_accessor when you need them
  attr_reader :name, :city, :chef
  attr_accessor :capacity
  def initialize(name, capacity, city, cuisine, chef_name)
    @name = name
    @capacity = capacity
    @city = city
    @cuisine = cuisine
    @clients = []
    @chef = Chef.new(chef_name, self)
  end

  def self.cuisines
    ['french', 'italian', 'thai']
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 22
  end

  def closed?
    !open?
  end

  def book(client)
    @clients << client
  end

  def print_clients
    print_name
    @clients.each do |client|
      puts "- #{client}"
    end
  end

  private

  def print_name
    puts name
  end
end
