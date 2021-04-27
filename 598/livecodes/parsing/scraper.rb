# TODO: Create a #fetch_movies_url method
# TODO: Create a #scrape_movies(url) method
require 'open-uri'
require 'nokogiri'

def fetch_movies_url
  # 1. create the url
  url = "https://www.imdb.com/chart/top/"
  # 2. read the page using that url
  html_file = URI.open(url).read
  # 3. with nokogiri I need to parse the page
  html_doc = Nokogiri::HTML(html_file)
  # 4. search on the page for the element containing the url
  # 5. take the first 5 results
  # html_doc.search('.titleColumn > a').first(5).map do |element|
  #   # 6. get the href attribute from the <a> tag
  #   "http://www.imdb.com#{element.attr('href')}"
  # end

  urls = []
  html_doc.search('.titleColumn > a').first(5).each do |element|
    # 6. get the href attribute from the <a> tag
    urls << "http://www.imdb.com#{element.attr('href')}"
  end
  urls
end

def scrape_movie(url)
  # casts (first 3)
  # director
  # title
  # year
  # storyline
  # 1. read the content of the webpage
  html_file = URI.open(url).read
  # 2. parse the html page using Nokogiri
  html_doc = Nokogiri::HTML(html_file)
  # 3. find the elements containing all the cast
  cast = html_doc.search('.primary_photo + td > a').first(3).map do |element|
    element.text.strip
  end
  # 4. find the element with the director info
  director = html_doc.search('.credit_summary_item > a').first.text.strip
  # 5. find the element with the title
  title_and_year = html_doc.search('.title_wrapper > h1').text.strip
  split = title_and_year.split('(')
  title = split.first[0...-1].strip
  # 6. find the element with the year
  year = split.last[0...-1].to_i
  # 7. find the element with the storyline
  storyline = html_doc.search('.summary_text').text.strip
  {
    cast: cast,
    director: director,
    title: title,
    year: year,
    storyline: storyline
  }
end
