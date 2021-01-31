class Subscription < ApplicationRecord
    belongs_to :student
    belongs_to :classroom
end
