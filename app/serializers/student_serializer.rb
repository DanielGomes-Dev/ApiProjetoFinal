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
    return User.find(object.user_id).name;
  end


  def email
    return User.find(object.user_id).email;
  end


  def birthdate
    return User.find(object.user_id).birthdate;
  end


  def rg
    return User.find(object.user_id).rg;
  end

  def cpf
    return User.find(object.user_id).cpf;
  end

  def course
    return Course.find(object.course_id).name;
  end
end