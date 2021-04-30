require 'csv'

class Cookbook
  def initialize(csv_file)
    @recipes = [] # Array of recipe instances => [Recipe.new(name, description), ...]
    @csv_file = csv_file
    load_data_from_csv
  end

  # 1. List recipes
  def all
    return @recipes
  end

  # 2. add a recipe
  def add_recipe(recipe)
    @recipes << recipe
    store_data_to_csv
  end

  # 3. delete a recipe
  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    store_data_to_csv
  end

  # one method to load the data that is in the CSV file
  ## From the CSV File => Ruby memory
  def load_data_from_csv
    CSV.foreach(@csv_file) do |row|
      # p row => Array
      # [] => read value from an array
      name = row[0]
      description = row[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
      # @recipes << Recipe.new(row[0], row[1])
    end
  end
  # one method to store my date into the CSV
  ## From my Ruby memory => CSV file

  def store_data_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
