class Course < ApplicationRecord
    has_many :students, dependent: :destroy
    belongs_to :coordinator, dependent: :destroy

   
end
