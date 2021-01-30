class CoordinatorSerializer < ActiveModel::Serializer
        attributes  :id, 
        :name, 
        :email,
        :rg,
        :cpf, 
        :registration,
        :birthdate,
        :type_coordinator,
        :coordinating

      def name
        return {department:object.department.name} if object.department.present?
        return {course:object.course.name} if object.course.present? 
        return nil
      end

      def coordinator

        return object.user.name;

      end


      def email

        return object.user.email;

      end


      def birthdate

        return object.user.birthdate;

      end


      def rg

        return object.user.rg;

      end

      def cpf

       return object.user.cpf;

      end

end