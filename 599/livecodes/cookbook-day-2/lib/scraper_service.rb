require_relative 'recipe'

class ScraperService
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def call
    url = "https://www.allrecipes.com/search/results/?search=#{@ingredient}"
    # 3. parse the HTML
    doc = Nokogiri::HTML(URI.open(url).read, nil, 'utf-8')

    # 4. Grab the HTML part that holds the title and description of each recipe
    # Array of Recipe instances
    doc.search('.card__detailsContainer').first(5).map do |element|
      # 5. find the title
      title = element.search('.card__title').text.strip
      # 6. find the description
      # .search('div') => targets tag
      # .search('.card') => targets class
      # .search('#card') => targets id
      description = element.search('.card__summary').text.strip
      # 7. Find the rating on the webpage
      rating = element.search('.review-star-text').text.strip.split[1].to_f # get us float numbers
      ## Or grab the rating by counting the number of html elements that have both .rating-star and .active classes:
      # rating = element.search('.rating-star.active').size # get us round numbers
      # 8. Find the url to the recipe's page
      recipe_url = element.search('.card__titleLink').attr('href')
      # 9. parse the recipe's HTML page
      recipe_doc = Nokogiri::HTML(URI.open(recipe_url).read, nil, 'utf-8')
      # 10. find the prep_time on the page (it's possible you came up with a different solution)
      prep_time = recipe_doc.search('.recipe-meta-item-body').first.text.strip
      # 11. build a recipe instance
      Recipe.new(title, description, rating, prep_time)
    end
  end
end
