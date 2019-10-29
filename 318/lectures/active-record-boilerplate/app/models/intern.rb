class Intern < ActiveRecord::Base
  belongs_to :doctor # => intern.doctor
end

# john = Intern.new(first_name: 'john', last_name: 'doe')
# john.doctor
