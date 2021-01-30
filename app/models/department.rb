class Department < ApplicationRecord
   has_many :subjects, dependent: :destroy
   has_many :classrooms
   belongs_to :coordinator, dependent: :destroy


end
