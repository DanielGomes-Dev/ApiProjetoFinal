class Course < ApplicationRecord
    has_many: can_learns
    has_many: students, through: can_learn
end
