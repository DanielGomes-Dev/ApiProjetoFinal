class SchoolYear < ApplicationRecord

    has_many :classrooms
    belongs_to :department

    enum status: {
        Planejamento: 0,
        inscricoes: 1,
        andamento: 2,
        concluido: 3
    } 

end
