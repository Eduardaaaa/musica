class CreateAlunosprofs < ActiveRecord::Migration[5.0]
  def change
    create_table :alunosprofs do |t|
      t.integer :aluno_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
