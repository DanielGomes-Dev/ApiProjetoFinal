# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    #caso o usuario seja o diretor
    if Manager.present?
      #r cadastra o curso, com as seguintes credenciais: nome, area de conhecimento, código, campus sede.
      :create, Course
    
    end
  end
end
