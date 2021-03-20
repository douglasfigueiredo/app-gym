class CreateTipoDeExercicios < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_de_exercicios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
