require_relative "recipe"

class Cookbook
  def initialize
    @recipes = [] # <--- <Recipe> instances
  end

  def create(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index)
  end

  def all
    return @recipes
  end
end
