class CreateExercicioRepeticaos < ActiveRecord::Migration[6.1]
  def change
    create_table :exercicio_repeticaos do |t|
      t.string :nome
      t.integer :min
      t.integer :max
      t.string :genero

      t.timestamps
    end
  end
end
