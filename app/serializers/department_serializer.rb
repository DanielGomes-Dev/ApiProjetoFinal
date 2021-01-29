class DepartmentSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :knowledge_area,
             :code,
             :campus
            
end
