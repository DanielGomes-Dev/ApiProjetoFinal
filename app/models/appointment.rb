class Appointment < ApplicationRecord
  belongs_to :school_year
  belongs_to :subject
end
