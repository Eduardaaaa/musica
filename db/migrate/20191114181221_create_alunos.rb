class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.integer :idade
      t.string :instrumento
      t.string :turno
      t.string :materia

      t.timestamps
    end
  end
end
