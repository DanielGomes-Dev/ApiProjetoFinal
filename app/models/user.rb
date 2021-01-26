class User < ApplicationRecord
    has_secure_password

    #presenca obrigatoria!
    validates :name, :email, :cpf, :rg, :role, :password, :nationality, :birthdate, :county, presence: true
    #Cpf no formato certo!
    {with: /\A(d{3}+.){2}+d{3}+-+d{2}\Z/, message: "O CPF deve estar no formato XXX.XXX.XXX-XX"}
    #Email tem que ser da idUFF!
    validates :email, format: {with: /\b[A-Z0-9._%a-z\-]+@id\.uff\.br\z/, message: "O email deve ser da idUFF"}
    #opcoes abaixo tendem a ser UNICAS!
    validates :email, :rg, :cpf, uniqueness: true
    #A role só pode ser definida por um numero!
    validates :role, numericality: { only_integer: true }
    enum role: {
        student: 0
        professor: 1
        course_head: 2
        course_department: 3
        manager: 4
    }    
end
