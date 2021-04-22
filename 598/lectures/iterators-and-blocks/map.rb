musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# transforming data with .each
musicians_upcased = []
musicians_upcased = musicians.each do |musician|
  musician_upcased = musician.upcase
  musicians_upcased << musician_upcased
end

musicians_upcased = musicians.map do |musician|
  musician.upcase
end

p musicians
p musicians_upcased
