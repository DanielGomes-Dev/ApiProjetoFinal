class Student < ApplicationRecord
  belongs_to :user

    has_many: can_learns
    has_many: courses, through: can_learn

  has_many: get_grades
  has_many:grades, through: get_grade

  has_many: matriculates
  has_many: classrooms, through: matriculates
end
