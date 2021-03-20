class CreateExercicios < ActiveRecord::Migration[6.1]
  def change
    create_table :exercicios do |t|
      t.string :nome
      t.string :tutorial
      t.references :tipo_de_exercicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
