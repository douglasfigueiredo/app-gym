class CreateExercicioSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :exercicio_series do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps
    end
  end
end
