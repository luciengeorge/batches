require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')

query = <<-SQL
  SELECT first_name from doctors order by first_name asc
SQL

rows = DB.execute(query)
pp rows.map { |row| row[0] }
