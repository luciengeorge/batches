require_relative 'animal'

class Lion < Animal
  def talk
    return "#{@name} roars"
  end

  def eat(food)
    # return "#{@name} eats #{food}. Law of the Jungle!"
    return "#{super(food)}. Law of the Jungle!"
  end
end
# "Simba eats a gazelle. Law of the Jungle!"
