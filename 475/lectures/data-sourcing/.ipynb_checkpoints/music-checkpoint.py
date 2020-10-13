import requests

def fetch_lyrics(artist, track):
    url = f"https://orion.apiseeds.com/api/music/lyric/{artist}/{track}"
    api_key = "GxRzgEUlJu9fXMB3TzYGhGJwNZO2gOzeJDFNvW8X0KNJKC9XDs2EhtyTp7PttMLw"
    response = requests.get(url, params={'apikey': api_key})
    data = response.json()
    if response.status_code != 200:
        return ''
    return data['result']['track']['text']