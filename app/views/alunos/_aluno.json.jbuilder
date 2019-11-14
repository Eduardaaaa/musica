json.extract! aluno, :id, :nome, :idade, :instrumento, :turno, :materia, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
