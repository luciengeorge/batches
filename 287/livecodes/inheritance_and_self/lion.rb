require_relative 'animal'

class Lion < Animal
  def talk
    return "#{@name} roars"
  end

  def eat(food)
    "#{super(food)}. Law of the jungle"
  end
end
