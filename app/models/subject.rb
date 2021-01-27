class Subject < ApplicationRecord
  has_many :can_lectures
  has_many :professors, through: :can_lectures
  has_many :classrooms

  has_many :appointments
  has_many :school_years, through: :appointments

end
