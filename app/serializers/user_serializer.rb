class UserSerializer < ActiveModel::Serializer
  attributes  :id, 
              :email,
              :name, 
              :rg,
              :cpf,
              :nationality,
              :role,
              :birthdate
  def student
    return User.find(object.user_id);
  end

  def course
    return Course.find(object.course_id);
  end
end