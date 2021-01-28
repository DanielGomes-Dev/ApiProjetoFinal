class Worker < ApplicationRecord
  belongs_to :user

  enum job: {
        course_head: 0,
        department_head: 1
      }
end
