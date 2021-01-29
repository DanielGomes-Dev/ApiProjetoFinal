class Subject < ApplicationRecord
  belongs_to :department

  has_many :requirements
  # has_many :can_lectures
  # has_many :professors, through: :can_lectures
  
  # has_many :classrooms
  
end
