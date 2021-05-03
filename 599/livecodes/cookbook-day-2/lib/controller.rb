require 'nokogiri'
require 'open-uri'
require_relative 'view'
require_relative 'recipe'
require_relative 'scraper_service'

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
    # 3. Ask user for rating
    rating = @view.ask_user_for("How would you rate this recipe?").to_f
    # 4. Ask user for prep_time
    prep_time = @view.ask_user_for("How many minutes will it take to prepare this recipe?")
    # 5. I need to create an instance of recipe to presist it to the Cookbook
    recipe = Recipe.new(name, description, rating, "#{prep_time} mins")
    # 6. I need to actually add that instance to my cookbook
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

  # 4. Scrape
  def scrape
    # filepath = 'strawberry.html'
    # 1. ask user for an ingredient
    ingredient = @view.ask_user_for("Which ingredient would you like to search for?")
    # 2. Show a message to the user stating we are searching their recipes
    @view.scraping_message(ingredient)
    # 3. Create a new instance of the service to scrape the website
    scraper = ScraperService.new(ingredient)
    # 4. call the .call instance method in our ScraperService class which will return an Array of Recipes
    recipes = scraper.call
    # 5. Display the suggestions to the user
    @view.display(recipes)
    # 6. Ask them which one they want to import
    selected_recipe_index = @view.ask_user_for("Which recipe would you like to import?").to_i - 1
    # 7. find the recipe in our array of recipes
    selected_recipe = recipes[selected_recipe_index]
    # 8. add it to the cookbook
    @cookbook.add_recipe(selected_recipe)
  end

  # 5. mark a recipe as done
  def mark_as_done
    # 1. display recipes
    fetch_and_display_recipes
    # 2. ask the user to choose one
    index = @view.ask_user_for("Which recipe did you do?").to_i - 1
    # 3. mark it as done and save it
    @cookbook.mark_recipe_as_done(index)
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
