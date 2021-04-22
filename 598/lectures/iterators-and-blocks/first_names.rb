musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

first_names = musicians.map do |musician|
  musician.split(' ').first # => musicians.split(' ')[0]
end

p musicians
p first_names
