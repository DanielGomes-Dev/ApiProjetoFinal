class Student < ApplicationRecord
  belongs_to :user
  belongs_to :course

  has_many :get_grades
  has_many :grades, through: :get_grades

  has_many :matriculates
  has_many :classrooms, through: :matriculates

  has_many :subscriptions
  has_many :classrooms, through: :matriculates

end
