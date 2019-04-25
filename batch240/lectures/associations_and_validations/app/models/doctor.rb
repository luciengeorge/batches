class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :first_name, :last_name, presence: true, uniqueness: { case_sensitive: false }
end

# has_many creates an instance method consultations and interns that you can call on your doctor instances
# house = Doctor.new(first_name:'gregory', last_name: 'house')
# house.consultations
# house.patients
