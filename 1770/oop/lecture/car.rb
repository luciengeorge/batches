# filename car.rb
# lower_snake_case for filenames
# UpperCamelCase for classnames
# sports_car.rb => SportsCar
class Car
  # YAGNI => You ain't gonna need it
  attr_reader :brand
  attr_accessor :color # reader and a writer for color

  def initialize(color, brand)
    # instance variable
    @engine_started = false
    @color = color
    @brand = brand
    # locale variable
    # color = 'red'
  end

  def engine_started?
    return @engine_started
  end

  def start_engine
    system_checkup
    fuel_injected_into_pump
    turn_battery_on
    # ...
    @engine_started = true
  end

  private

  def system_checkup
    puts "Checking systems..."
  end

  def fuel_injected_into_pump
    puts "injected fuel..."
  end

  def turn_battery_on
    puts "battery turning on..."
  end

  # def paint_in_green
  #   Car.new('green', @brand)
  # end

  # def paint_in_green!
  #   @color = 'green'
  # end

  # writer
  # def color=(new_color)
  #   @color = new_color
  # end

  # reader
  #  attr_reader :color
  #  def color
  #   return @color
  #  end

  # reader
  # attr_reader :brand
  # def brand
  #   return @brand
  # end
end
