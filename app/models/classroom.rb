class Classroom < ApplicationRecord
  belongs_to :subject
  belongs_to :professor
  belongs_to :school_year

  has_many :students, through: :matriculates
  has_many :matriculates
end
