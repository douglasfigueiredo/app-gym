class CreateTipoDeExercicioDoTreinos < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_de_exercicio_do_treinos do |t|
      t.references :rotina_de_treino, null: false, foreign_key: true
      t.references :tipo_de_exercicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
