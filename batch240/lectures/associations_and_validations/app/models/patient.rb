class Patient < ActiveRecord::Base
  has_many :consultations
  has_many :doctors, through: :consultations
end

# has_many creates an instance method consultations that you can call on your patient instances
# patient = Patient.new(first_name:'allison', last_name: 'smith')
# patient.consultations
