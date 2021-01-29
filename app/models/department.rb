class Department < ApplicationRecord
   has_many :subjects, dependent: :destroy
   belongs_to :coordinator, dependent: :destroy


end
