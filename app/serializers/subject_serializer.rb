class SubjectSerializer < ActiveModel::Serializer
    attributes  :id, 
    :name,
    :knowledge_area,
    :workload,
    :department

    def department
       return Department.find(object.department_id).name
    end

end
