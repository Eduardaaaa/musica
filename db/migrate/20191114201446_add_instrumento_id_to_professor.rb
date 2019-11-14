class AddInstrumentoIdToProfessor < ActiveRecord::Migration[5.0]
  def change
    add_column :professors, :instrumento_id, :string
  end
end
