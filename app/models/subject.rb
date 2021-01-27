class Subject < ApplicationRecord
  belongs_to :school_year
  has_many: can_lectures
  has_many: professors, through: can_lecture

  has_many: classrooms

end
