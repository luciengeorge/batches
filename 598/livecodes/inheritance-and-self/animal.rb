class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.phyla
    return %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    return "#{@name} eats #{food}"
  end
end
