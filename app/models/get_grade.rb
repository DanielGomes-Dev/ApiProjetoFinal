class GetGrade < ApplicationRecord
  belongs_to :grade
  belongs_to :student
end
