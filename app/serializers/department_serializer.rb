class DepartmentSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :email,
             :contact,
             :knowledge_area,
             :campus,
             :coordinator
             
  def coordinator
    return object.coordinator.user.name
  end

end
