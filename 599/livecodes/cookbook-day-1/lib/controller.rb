require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # 1. list
  def list
    fetch_and_display_recipes
  end
  # 2. create
  def create
    # 1. ask the user for the name of the recipe
    name = @view.ask_user_for("What's the name of your recipe?")
    # 2. ask the user for the description of the recipe
    description = @view.ask_user_for("What's the description of your recipe")
    # 3. I need to create an instance of recipe to presist it to the Cookbook
    recipe = Recipe.new(name, description)
    # 4. I need to actually add that instance to my cookbook
    @cookbook.add_recipe(recipe)
  end

  # 3. destroy
  def destroy
    # 1. display the recipes that are in the Cookbook
    fetch_and_display_recipes
    # 2. ask the user which recipe they want to delete => (index)
    recipe_index = @view.ask_user_for('Which recipe do you want to delete?').to_i - 1
    # 3. delete the recipe
    @cookbook.remove_recipe(recipe_index)
  end

  private

  def fetch_and_display_recipes
    # 1. fetch the recipes from the cookbook
    recipes = @cookbook.all
    # 2. display the list
    @view.display(recipes)
    # same thing as above:
    # @view.display(@cookbook.all)
  end
end
