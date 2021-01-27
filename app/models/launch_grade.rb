class LaunchGrade < ApplicationRecord
  belongs_to :professor
  belongs_to :grade
end
