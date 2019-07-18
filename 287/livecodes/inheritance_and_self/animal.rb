# animal.rb
class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.animals
    %w[lion meerkat warthog]
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end
