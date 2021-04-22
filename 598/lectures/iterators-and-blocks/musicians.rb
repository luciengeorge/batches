musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

puts musicians.size

# CRUD (Create, Read, Update, Delete)

# Create
musicians << 'Michael Jackson' # == musicians.append('Michael Jackson')

p musicians

# Read
roger = musicians[1] # roger = 'Roger Waters'
p roger


# Update
musicians[0] = 'Mark Knopfler'
p musicians

# Delete
# ['Mark Knopfler', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Michael Jackson']
musicians.delete('Mark Knopfler')
# ['Roger Waters', 'Richard Wright', 'Michael Jackson']
musicians.delete_at(2)

p musicians
