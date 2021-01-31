class GradeSerializer < ActiveModel::Serializer
  attributes :id,
             :student,
             :grade,
             :professor,
             :subject,
             :classroom,
             :status

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
  
  def status
    return "Aprovado" if object.grade >= 6.0
    return "Reprovado"
  end
  

end
