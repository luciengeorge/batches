import sqlite3

conn = sqlite3.connect('data/soccer.sqlite')
conn.row_factory = sqlite3.Row
cursor = conn.cursor()

# cursor.execute('SELECT * FROM Country')
# rows = cursor.fetchall()
# description = [desc[0] for desc in cursor.description]
# description = []
# for desc in cursor.description:
#   description.append(desc[0])
# print(description)
# print(rows[0]['name'])


cursor.execute("""
  SELECT * FROM Country
  WHERE id = 2
""")

row = cursor.fetchall()

if len(row) > 0:
  print(row[0]['name'])
else:
  print('no results')
