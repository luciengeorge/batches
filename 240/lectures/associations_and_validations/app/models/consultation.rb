class Consultation < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
end

# belongs_to creates an instance method patient and doctor that you can call on your consulation instances
# flu = Consultation.new
# flu.patient
# flu.doctor
