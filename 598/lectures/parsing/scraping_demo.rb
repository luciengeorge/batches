require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

# data will come as plaintext
html_file = URI.open(url).read

# convert it to a Nokogiri::HTML object
html_doc = Nokogiri::HTML(html_file)

# class => .
# id => #
# tag => nothing
html_doc.search('.standard-card-new__article-title').first(10).each do |element|
  g element.text # grab the text that is in between the <a> tags
  p element.attr('href') # grab the href attribute of the <a> tag
end
