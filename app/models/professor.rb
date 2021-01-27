class Professor < ApplicationRecord
  belongs_to :user
  has_many: classrooms
  has_many: can_lectures
  has_many: subjects, through: can_lecture
end
