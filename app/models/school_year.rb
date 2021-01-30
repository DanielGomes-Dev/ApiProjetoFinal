class SchoolYear < ApplicationRecord

    has_many :classrooms

    enum status: {
        Planejamento: 0,
        inscricoes: 1,
        andamento: 2,
        concluido: 3
    } 

end
