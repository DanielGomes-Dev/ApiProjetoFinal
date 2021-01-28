class StudentSerializer < ActiveModel::Serializer
  attributes  :id, 
              :student,
              :course, 
              :registration,

  def student
    return User.find(object.user_id).name;
  end

  def course
    return Course.find(object.course_id).name;
  end
end