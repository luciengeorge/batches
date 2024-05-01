require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')
DB.results_as_hash = true
DB.execute("insert into doctors (first_name, last_name, age, specialty) values ('Dr. John', 'Doe', 45, 'General Practitioner')")
rows = DB.execute("select * from doctors")
pp rows
pp DB.last_insert_row_id
