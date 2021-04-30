class Recipe
  # allows me to call recipe.name
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
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
