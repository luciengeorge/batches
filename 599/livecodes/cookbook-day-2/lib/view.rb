class View
  def ask_user_for(message)
    puts message
    print "> "
    return gets.chomp
  end

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}"
    end
  end
end
