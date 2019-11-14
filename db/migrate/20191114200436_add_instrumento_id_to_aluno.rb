class AddInstrumentoIdToAluno < ActiveRecord::Migration[5.0]
  def change
    add_column :alunos, :instrumento_id, :string
  end
end
