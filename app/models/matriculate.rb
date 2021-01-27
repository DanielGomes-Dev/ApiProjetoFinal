class Matriculate < ApplicationRecord
  belongs_to :student
  belongs_to :classroom
end
