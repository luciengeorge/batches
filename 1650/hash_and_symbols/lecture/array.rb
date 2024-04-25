students =     ["Peter", "Mary", "George", "Emma" ]
student_ages = [24, 25, 22, 20]

# print the student name and their age from two different arrays
students.each_with_index do |student, index|
  puts "#{student} is #{student_ages[index]} years old"
end

# CRUD

# Create
students.push('John') # students << 'John'

# Read
students[3]

# Update
students[1] = "Daniel"

# Delete
students.delete_at(2)
students.delete('Peter')
