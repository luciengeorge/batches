class Intern < ActiveRecord::Base
  belongs_to :doctor
end

# belongs_to creates an instance method doctor that you can call on your intern instances
# arthur = Intern.new(first_name:'arthur', last_name: 'littman')
# arthur.doctor = house
# arthur.doctor
