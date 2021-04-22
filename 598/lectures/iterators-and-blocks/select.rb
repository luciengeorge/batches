musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

filtered_musicians = musicians.select do |musician|
  last_name = musician.split.last
  musician.start_with?('R') || last_name.start_with?('G')
end

p musicians
p filtered_musicians

filtered_musicians = musicians.reject do |musician|
  musician.start_with?('R')
end

p filtered_musicians
