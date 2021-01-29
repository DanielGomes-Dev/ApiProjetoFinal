class CoordinatorSerializer < ActiveModel::Serializer
  attributes :id, 
             :registration,
             :name

  def name
      return object.user.name
  end


end
