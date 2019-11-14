class CreateInstrumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :instrumentos do |t|
      t.string :nome
      t.string :familia

      t.timestamps
    end
  end
end
