class CoordinatorSerializer < ActiveModel::Serializer
  attributes :id, 
             :registration,
             :name

  def name
      return object.user_id
  end


end
