class Professor < ApplicationRecord
    validates_presence_of :nome
    
    belongs_to :instrumento
    has_many :alunos, through: :alunosprofs
    has_many :alunosprofs
end
