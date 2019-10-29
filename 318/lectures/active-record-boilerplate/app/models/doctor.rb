class Doctor < ActiveRecord::Base
  has_many :interns # => house.interns
  has_many :consultations # => house.consultations
  has_many :patients, through: :consultations # => house.patients
  validates :last_name, presence: true, uniqueness: true
end


# house = Doctor.new(first_name: 'gregory', last_name: 'house')
# house.interns
# house.patients

# query = <<-SQL
# SELECT * FROM patients
# JOIN consultations on consultations.patient_id = patients.id
# WHERE consultations.doctor_id = 5
# SQL
