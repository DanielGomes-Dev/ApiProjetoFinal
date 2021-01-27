class Subject < ApplicationRecord
  belongs_to :school_year
  has_many: can_lectures
  has_many: professors, through: can_lecture
  has_many: classrooms

  has_many: appointments
  has_many: school_years, through: appointment

end
