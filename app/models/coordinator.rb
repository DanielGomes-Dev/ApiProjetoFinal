class Coordinator < ApplicationRecord
  belongs_to :user
  has_one :department
  has_one :course

    enum type_coordinator: {
        department: 0,
        course: 1,
    }

end
