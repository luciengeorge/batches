# 1. What’s a variable? What’s the point of using variables? Give an example.
# A container that stores a value that we can use later

# 2. Precisely describe the following line of code using the correct vocabulary.
age = 18
# assigning the integer 18 to a variable called `age`

# 3. What’s a method? What’s the point of defining methods?
# A sequence of coding instructions that can be reused in the application. It's made of a name and sometimes parameters as well.

# 4. Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

def multiply(x, y) # Define a method called multiply with two parameters x and y
  return x * y     # Multiplying and returning the result of x times y
end                # Ending the method definition

puts multiply(5, 8) # calling the method with arguments 5 and 8 and printing the result using puts

# 5. What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.
age = 17
if age >= 18 # if evaluates a condition
  puts "You can drink"
else
  puts "You cannot drink"
end

# 6. Complete the following code to compute the exact average of students grades (using each ).
grades = [19, 8, 11, 15, 13]
sum = 0
grades.each do |grade|
  sum += grade
end
average = sum / grades.size.to_f # => sum.fdiv(grades.size)
puts average

# 7. Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).
def capitalize_name(first_name, last_name)
  # solution 1
  first_name.capitalize + ' ' + last_name.capitalize

  # solution 2
  capitalized_first_name = first_name.capitalize
  capitalized_last_name = last_name.capitalize
  "#{capitalized_first_name} #{capitalized_last_name}"

  # solution 3
  "#{first_name.capitalize} #{last_name.capitalize}"
end

# 8. What’s the difference between concatenation and interpolation? Give an example.
# concatenation => adding strings together using the + sign
# interpolation => creating a string by injecting ruby code inside the string using #{}

# 9. Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits.push('apple') # fruits << 'apple' | fruits.append('apple')

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete_at(3) # => fruits.delete_at(-1)
fruits.delete("orange")

# 10. Translate each line of pseudo-code into ruby.
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor] # => return nil

# 11. Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
 # :name and :age are symbols

# solution with .each
students_array_of_hashes = []
 students.each do |student|
  name = student[0]
  age = student[1]
  students_array_of_hashes << {name: name, age: age}
 end

# solution with .map
students_array_of_hashes = students.map do |student|
  name = student[0]
  age = student[1]
  {name: name, age: age}
end

# advanced solution with .map
students_array_of_hashes = students.map do |name, age|
  {name: name, age: age}
end

# advanced#2 solution with .map (works since ruby 3.0)
students_array_of_hashes = students.map do |name, age|
  {name:, age:}
end

 p students_array_of_hashes
