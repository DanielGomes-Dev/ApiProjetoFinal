class SubjectSerializer < ActiveModel::Serializer
    attributes  :id, 
    :name,
    :knowledge_area,
    :workload,
    :semester,
    :department,
    :requirement
    :department_id

    def department
       return object.department.id
    end

    def requirement
        requirement = []
        object.requirements.each do |require_subject|
            requirement.push({
                    name: Subject.find(require_subject.subject_id).name
            })
        end
        return requirement

    end
end
