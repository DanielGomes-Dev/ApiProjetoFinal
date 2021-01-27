class Student < ApplicationRecord
  belongs_to :user
  has_many: matriculates
  has_many: classrooms, through: matriculates
end
