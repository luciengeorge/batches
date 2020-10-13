import re
import requests
import pandas as pd
from bs4 import BeautifulSoup

def fetch_page(page):
    response = requests.get(
        "https://www.imdb.com/search/title/",
        params={"groups":"top_250", "sort":"user_rating,desc","start": (1 + page * 50)},
        headers={"Accept-Language":"en-US"})
    soup = BeautifulSoup(response.content, "html.parser")
    return soup

def parse_movies(soup):
    movies = []
    for movie in soup.find_all("div", class_="lister-item-content"):
        title = movie.find("h3").find("a").string
        duration = int(movie.find(class_="runtime").string.strip(' min'))
        year = int(re.search(r"\d{4}", movie.find(class_="lister-item-year").string).group(0))
        movies.append({'title': title, 'duration': duration, 'year': year})
    return movies