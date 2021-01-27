class Grade < ApplicationRecord
  
  #qual a relacao entre esses 3 e a grade??? 1-n?
  belongs_to :student
  belongs_to :subject
  belongs_to :classroom


  belongs_to :professor
  
  has_many: get_grades
  has_many:students, through: get_grade

  has_many: launch_grades
  has_many: professors, through:launch_grade

end
