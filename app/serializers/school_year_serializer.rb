class SchoolYearSerializer < ActiveModel::Serializer
  attributes :id,
             :year,
             :status,
             :semester
end
