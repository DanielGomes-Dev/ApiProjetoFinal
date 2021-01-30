class User < ApplicationRecord
    has_one :address, dependent: :destroy
    has_one :professor, dependent: :destroy
    has_one :student, dependent: :destroy
    has_one :coordinator, dependent: :destroy

    has_secure_password

    #name
    validates :name, presence: true

    #email
    validates :email, presence: true
    #validates :email, format: {with: /\b[A-Z0-9._%a-z\-]+@id\.uff\.br\z/, message: "O email deve ser da idUFF"}

    #CPF
    validates :cpf, presence: true
    # validates :cpf, format: {with: /\A(d{3}+.){2}+d{3}+-+d{2}\Z/, message: "O CPF deve estar no formato XXX.XXX.XXX-XX"}

    #RG
    validates :rg, presence: true

    #Role

    #Nationality
    # validates :nationality, presence: true

    #birthdate
    validates :birthdate, presence: true

    #Address
    validates :address, presence: false

    #A role só pode ser definida por um numero!


    enum role: {
        student: 0,
        professor: 1,
        coordinator: 2,
        manager: 3
    } 
end
