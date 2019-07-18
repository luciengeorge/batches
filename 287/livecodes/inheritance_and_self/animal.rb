class Animal
attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.species
    ["Lion", "Warthog", "Meerkat"]
  end

  def eat(food)
    "#{name} eats #{food}"
  end
end
