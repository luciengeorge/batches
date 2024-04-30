require "sqlite3"

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  db.execute("SELECT COUNT(*) FROM artists").flatten.first
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(*) FROM #{table_name}").flatten.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  db.execute("SELECT name FROM artists ORDER BY name").flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names
  db.execute("SELECT name FROM tracks WHERE name LIKE '%love%' ORDER BY name").flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
  query = <<~SQL
    SELECT name
    FROM tracks
    WHERE milliseconds > ? * 60000
    ORDER BY milliseconds ASC
  SQL
  db.execute(query, min_length).flatten
end

def albums_per_artist(db)
  query = <<~SQL
    SELECT artists.name, COUNT(*) as album_count
    FROM artists
    JOIN albums ON albums.artist_id = artists.id
    GROUP BY artists.name
    ORDER BY artists.name
  SQL
  db.execute(query)
end
