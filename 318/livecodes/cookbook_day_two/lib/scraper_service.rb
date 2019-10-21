require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

class ScraperService
  def initialize(keyword)
    # keyword is the variable that changes everytime we scrape
    # that's why we have it as an instance variable
    # if you want to scrape from another website you could create an instance variable
    # for the url as well
    @keyword = keyword
  end

  def scrape
    # 1. creating url by interpolating the keyword
    url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?aqt=#{@keyword}"
    # 2. reading the content of the page
    html_file = open(url).read
    # 3. use nokogiri to scrape the page
    html_doc = Nokogiri::HTML(html_file)
    # 4. creating empty array that is going to store all the recipes from the internet
    recipes = []
    html_doc.search('.m_contenu_resultat').first(5).each do |element|
      # 5. find name
      name = element.search('.m_titre_resultat a').text.strip
      # 6. find description
      description = element.search('.m_texte_resultat').text.strip
      # 7. find prep time
      prep_time = element.search('.m_detail_time div').first.text.strip
      # 8. create an instance of recipe
      new_recipe = Recipe.new(name, description, prep_time)
      # 9. push the recipe in the recipes array
      recipes << new_recipe
    end
    return recipes
  end
end
