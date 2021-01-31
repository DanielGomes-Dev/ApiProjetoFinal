class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id,
             :student,
             :classroom,
             :professor,
             :room,
             :code

      def student
        object.student.user.name
      end

      def classroom
        object.classroom.name
      end

      def professor
        object.classroom.professor.user.name
      end

      def room
        object.classroom.room
      end

      def code 
        object.classroom.code
      end
end