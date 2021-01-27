class CanLearn < ApplicationRecord
  belongs_to :student
  belongs_to :courses
end
