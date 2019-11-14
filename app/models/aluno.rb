class Aluno < ApplicationRecord
    validates_presence_of :nome
    validates_size_of :idade, minimum:2
    validates_presence_of :idade
    validates_numericality_of :idade
    
    belongs_to :instrumento
    has_many :professors, through: :alunosprofs
    has_many :alunosprofs
   
end
