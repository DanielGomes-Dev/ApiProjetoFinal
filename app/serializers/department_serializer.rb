class DepartmentSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :knowledge_area,
             :code,
             :campus,
             :coordinator
             
  def coordinator
    #
    return object.coordinator.user.name
  end

end
