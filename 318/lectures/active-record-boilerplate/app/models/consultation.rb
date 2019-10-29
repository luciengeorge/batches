class Consultation < ActiveRecord::Base
  belongs_to :patient # => consultation.patient
  belongs_to :doctor # => consultation.doctor
end
