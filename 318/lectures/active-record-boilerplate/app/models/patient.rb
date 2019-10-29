class Patient < ActiveRecord::Base
  has_many :consultations # => patient.consultations
  has_many :doctors, through: :consultations # => patient.doctors
end
