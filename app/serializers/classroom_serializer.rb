class ClassroomSerializer < ActiveModel::Serializer
  attributes :id, 
             :subject_class,
             :name,
             :quantity,
             :code,
             :calendar

  def classroom
      return object.user.name
  end

  def quantity
    return object.user.quantity
  end

  def calendar
    return object.user.calendar
  end

  def code
    return object.user.code
  end

end
