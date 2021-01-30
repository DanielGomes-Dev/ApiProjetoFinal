class GradeSerializer < ActiveModel::Serializer
  attributes :id,
             :student,
             :grade,
             :professor,
             :subject,
             :classroom

  def student
    return object.student.user.name  
  end

  def professor
    return object.professor.user.name
  end
  
  def subject
    return object.subject.name
  end
  
  def classroom
    return object.classroom.name
  end
  
  

end
