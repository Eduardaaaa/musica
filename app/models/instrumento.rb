class Instrumento < ApplicationRecord
    validates_presence_of :nome
    
    has_many :alunos
    has_many :professors
end
