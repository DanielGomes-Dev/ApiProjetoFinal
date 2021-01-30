# frozen_string_literal: true

class Ability
  include CanCan::Ability

  #def initialize(user)
   # if user.manager.present?
    #  can :manage, Course, Coordinator
     # can :manage, School_year
      #can :manage, Department
  #end
   # if user.coordinator.present?
      #can :manage, user.coordinator.Courses
      #can :manage, Student
      #Durante o planejamento
      #can :create, Subject, Classroom
      #can :manage, Professor, Course
      #Durante o período de inscrições
     # can :read, Subject

    #end
    #if User.present?
     # can :read, course_id
    #end
    #if user.professor.present?
      #Enquanto o período estiver aberto
     # can :manage, Grade
    #end
    #if user.student.present?
    #end
  

end
