class ClassroomSerializer < ActiveModel::Serializer
  attributes :id, 
             :name,
             :subject,
             :professor,
             :quantity,
             :code,
             :calendar

  def subject
      return object.subject.name
  end

  def professor
    return object.professor.user.name
  end

end
