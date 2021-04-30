class Car
  # state => instance variables
  # behavior => the methods
  def initialize(brand, color)
    @brand = brand
    @color = color
  end

  # instance method
  def paint(new_color)
    @color = new_color
  end

  # class methods
  def self.number_of_wheels
    return 4
  end
end
