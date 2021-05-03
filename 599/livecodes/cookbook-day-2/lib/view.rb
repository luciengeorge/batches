class View
  def ask_user_for(message)
    puts message
    print '> '
    return gets.chomp
  end

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      check_mark = recipe.done ? '[X]' : '[ ]'
      puts "#{index + 1}. #{check_mark} #{recipe.name} - #{recipe.prep_time} (#{recipe.rating} / 5)"
    end
  end

  def scraping_message(ingredient)
    puts "We are looking for recipes with: #{ingredient}..."
  end
end
