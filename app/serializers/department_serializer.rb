class DepartmentSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :knowledge_area,
             :code,
             :campus,
             :coordinator
             
  def coordinator
    #
    return 'Coordenador'
  end

end
