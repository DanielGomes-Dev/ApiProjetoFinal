class SchoolYear < ApplicationRecord
has_many :appointments
has_many :subjects, through: :appointments

end
