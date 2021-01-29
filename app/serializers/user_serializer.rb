class UserSerializer < ActiveModel::Serializer
  attributes  :id, 
              :email,
              :name, 
              :rg,
              :cpf,
              :nationality,
              :birthdate,
              :role,
              :informations_role,
              :address,
              :contact




  def informations_role
    if object.student.present?
      return {
                  course: object.student.course.name,
                  registration: object.student.registration,              
              }
            
    elsif object.professor.present?
      return{
              registration: object.professor.registration,
      }
    else
      return {}
    end
      
  end

  def address
    return {
          street: object.address.street,
          number: object.address.number,
          neighborhood: object.address.neighborhood,
          complement:object.address.complement,
          city:object.address.city,
          state:object.address.state 
      } if object.address.present?

    return {}
  end

  def contact
    return {
      telephone: "88888888",
      celular: "9888888"
      }
  end
end