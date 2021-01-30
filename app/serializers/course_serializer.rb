class CourseSerializer < ActiveModel::Serializer
  attributes :id, 
             :name,
             :knowledge_area,
             :campus,
             :coordinator_id

  def name
      return object.name
  end
  def knowledge_area
    return object.knowledge_area
  end
  def code
    return object.code
  end
  def campus
    return object.campus
  end
  def coordinator
    return coordinator.name[object.coordinator_id]
  end
end
