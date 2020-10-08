import sqlite3

conn = sqlite3.connect('data/soccer.sqlite')
conn.row_factory = sqlite3.Row
c = conn.cursor()

c.execute('SELECT * FROM Country')

row = c.fetchone()
print(type(row))
# print(rows)
# for row in rows:
#   print(row['id'])
print(row['name'])
