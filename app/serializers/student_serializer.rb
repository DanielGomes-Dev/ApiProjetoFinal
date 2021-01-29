class StudentSerializer < ActiveModel::Serializer
  attributes  :id, 
              :student,
              :email,
              :course,
              :rg,
              :cpf, 
              :registration,
              :birthdate

  def student
    return object.user.name;
  end


  def email
    return object.user.email;
  end


  def birthdate
    return object.user.birthdate;
  end


  def rg
    return object.user.rg;
  end

  def cpf
    return object.user.cpf;
  end

  def course
    return object.course.name;
  end
end