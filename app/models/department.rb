class Department < ApplicationRecord
   has_many :subjects, dependent: :destroy
   has_one :coordinator, dependent: :destroy


end
