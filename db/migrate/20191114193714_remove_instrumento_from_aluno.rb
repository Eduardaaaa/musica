class RemoveInstrumentoFromAluno < ActiveRecord::Migration[5.0]
  def change
    remove_column :alunos, :instrumento, :string
  end
end
