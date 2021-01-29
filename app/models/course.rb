class Course < ApplicationRecord
    has_many :students, dependent: :destroy
    belongs_to :coordinators, dependent: :destroy

   
end
