require_relative 'view'
require_relative 'recipe'
require_relative 'scraper_service'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # USER ACTIONS

  def list
    display_recipes
  end

  def create
    # 1. Ask user for a name (view)
    name = @view.ask_user_for('name')
    # 2. Ask user for a description (view)
    description = @view.ask_user_for('description')
    # 3. Ask user for prep time (view)
    prep_time = @view.ask_user_for('prep time')
    # 4. Create recipe (model)
    recipe = Recipe.new(name, description, prep_time)
    # 5. Store in cookbook (repo)
    @cookbook.add_recipe(recipe)
    # 6. Display
    display_recipes
  end

  def destroy
    # 1. Display recipes
    display_recipes
    # 2. Ask user for index (view)
    index = @view.ask_user_for_index
    # 3. Remove from cookbook (repo)
    @cookbook.remove_recipe(index)
    # 4. Display
    display_recipes
  end

  def import
    # 1. asking the user for an ingredient and store it in a variable
    ingredient = @view.ask_user_for('Ingredient')
    # 2. Call the scraper service
    scraper = ScraperService.new(ingredient)
    recipes = scraper.scrape
    # 5. Display the recipes
    @view.display(recipes)
    # 6. the user has to choose one recipe
    index = @view.ask_user_for_index
    # 7. add the recipe to the cookbook
    selected_recipe = recipes[index]
    @cookbook.add_recipe(selected_recipe)
  end

  def switch_marking
    # list the recipes to the user
    list
    # get the index from the user
    index = @view.ask_user_for_index
    # mark as done or undone the recipe
    @cookbook.update_marking(index)
  end

  private

  def display_recipes
    # 1. Get recipes (repo)
    recipes = @cookbook.all
    # 2. Display recipes in the terminal (view)
    @view.display(recipes)
  end
end
