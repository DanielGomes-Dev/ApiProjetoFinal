class ProfessorSerializer < ActiveModel::Serializer
    attributes  :id, 
              :professor,
              :email,
              :rg,
              :cpf, 
              :registration,
              :birthdate

  def professor
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

end