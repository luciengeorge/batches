# test.rb
require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

# READ (One row)
task = Task.find(1)
p task

# CREATE
task = Task.new(title: "My new task", description: 'CRUD operation CREATE')
task.save
p task

# UPDATE
task = Task.find(3)
task.done = true
task.save
p task

# READ (All)
Task.all.each do |task|
  puts "[#{task.done ? 'X' : ' '}] - #{task.title}"
end

# DESTROY
task = Task.find(2)
task.destroy
