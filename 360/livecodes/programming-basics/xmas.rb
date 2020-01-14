# define the method `number_of_days` done
# When chrismas is
# What day is today
# subtract the two dates
# convert the result into days
# return the result

require 'date'

def number_of_days(date)
  current_year = date.year
  christmas_date = Date.new(current_year, 12, 25)
  if date > christmas_date
    christmas_date = christmas_date.next_year
  end
  (christmas_date - date).to_i
end

date = Date.new(2020, 12, 26)
puts number_of_days(date).class == Integer
# puts number_of_days(date) == 363
puts number_of_days(date)
