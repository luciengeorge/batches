# SQL Injection scenario
# Imagine entering a username and password on a webpage
# A simple SQL query behind this to check whether or not the username and password are correct is:
query = "SELECT users where username='your_username' AND password='your_password'"
# As a hacker, in the password field if I enter the following: anything' OR 'x'='x'
# the query will be as follows
query = "SELECT users where username='your_username' AND password='anything' OR 'x'='x'"
# 'x'='x' being always evaluated to true, you'll be able to login even if you provided a dummy password
# to prevent that:
query = "SELECT users where username=? AND password=?"
DB.execute(query, 'your_username', 'your_password')

# create an instance in memory
doctor = Doctor.new(name: 'John', age: 42)
# save it with correct CRUD operation
# CRUD?
# CREATE
INSERT INTO doctors (name, age)
VALUES ('John', 42)

doctors = DB.execute("SELECT name, age FROM doctors")
# array of arrays
# => [
#      [ "John Smith", 39 ],
#      [ "Emma Reale", 31 ]
#    ]
doctors[0][0]
doctors.first.first

DB.results_as_hash = true
doctors = DB.execute("SELECT name, age FROM doctors")
# array of hashes (easier to manipulate)
# => [
#      { "name" => "John Smith", "age" => 39 , 0 => "John Smith", 1 => 39 },
#      { "name" => "Emma Reale", "age" => 31 , 0 => "Emma Reale", 1 => 31 }
#    ]


doctor = doctors.first
name = doctor["name"]
age = doctor["age"]




