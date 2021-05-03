class Recipe
  # allows me to call recipe.name
  attr_reader :name, :description, :rating, :prep_time, :done

  def initialize(name, description, rating, prep_time, done = false)
    @name = name
    @description = description
    @rating = rating
    @prep_time = prep_time
    @done = done
  end

  def mark_as_done!
    @done = true
  end

  # instance method => call it on an instance of Recipe
  # allows me to call recipe.name
  # def name
  #   return @name
  # end

  # def description
  #   return @description
  # end
end
