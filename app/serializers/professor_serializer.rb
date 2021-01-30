class ProfessorSerializer < ActiveModel::Serializer
    attributes :id, 
              :professor,
              :email,
              :rg,
              :cpf, 
              :registration,
              :birthdate,
              :can_lecture

  def professor
    return object.user.name;
  end

  def can_lecture
    subjects = []
    object.subjects.each do |subject|
      subjects.push(subject.name)
    end 
    return subjects 
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