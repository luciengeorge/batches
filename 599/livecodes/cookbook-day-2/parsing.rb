require 'nokogiri'
require_relative 'lib/recipe'
filepath = 'strawberry.html'

doc = Nokogiri::HTML(File.open(filepath), nil, 'utf-8')

recipes = doc.search('.card__detailsContainer').first(5).map do |element|
  # find the title
  title = element.search('.card__title').text.strip
  # find the description
  description = element.search('.card__summary').text.strip
  # find the rating
  # rating = element.search('.review-star-text').text.strip.split[1].to_f
  rating = element.search('.rating-star.active').size
  # recipe has a name, description, and rating in the initialize method (and done as an optional argument)
  Recipe.new(title, description, rating)
end
p recipes


### same but with .each
recipes = []
doc.search('.card__detailsContainer').first(5).each do |element|
  # find the title
  title = element.search('.card__title').text.strip
  # find the description
  description = element.search('.card__summary').text.strip
  p title, description
  # recipe name, description in the initialize method
  recipes << Recipe.new(title, description)
end
