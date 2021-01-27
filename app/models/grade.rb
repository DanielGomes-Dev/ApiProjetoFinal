class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  belongs_to :professor
  belongs_to :classroom

  has_many: launch_grades
  has_many: professors, through:launch_grade

end
