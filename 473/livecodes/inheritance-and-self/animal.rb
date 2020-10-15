class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def myself
    self
  end

  def self.phyla
    # %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
    ['Deuterostomia', 'Ecdysozoa', 'Lophotrochozoa', 'Radiata']
  end

  def eat(food)
    return "#{@name} eats #{food}"
  end
end
