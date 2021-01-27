class Classroom < ApplicationRecord
  belongs_to :subject
  belongs_to :professor
  belongs_to :school_year
end
