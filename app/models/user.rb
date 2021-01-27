class User < ApplicationRecord
    has_one :address
    has_many :professors
    has_many :students
    has_secure_password

    #name
    validates :name, presence: true

    #email
    validates :email, presence: true
    validates :email, uniqueness: true
    #validates :email, format: {with: /\b[A-Z0-9._%a-z\-]+@id\.uff\.br\z/, message: "O email deve ser da idUFF"}

    #CPF
    validates :cpf, presence: true
    validates :cpf, uniqueness: true
    # validates :cpf, format: {with: /\A(d{3}+.){2}+d{3}+-+d{2}\Z/, message: "O CPF deve estar no formato XXX.XXX.XXX-XX"}

    #RG
    validates :rg, presence: true
    validates :rg, uniqueness: true

    #Role
    validates :role, numericality: { only_integer: true }

    #Nationality
    validates :nationality, presence: true

    #birthdate
    validates :birthdate, presence: true

    #Address
    validates :address, presence: false

    #A role só pode ser definida por um numero!


    enum role: {
        student: 0,
        professor: 1,
        course_head: 2,
        head_department: 3,
        manager: 4
    } 
end
