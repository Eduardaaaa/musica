class RemoveInstrumentoFromProfessor < ActiveRecord::Migration[5.0]
  def change
    remove_column :professors, :instrumento, :string
  end
end
