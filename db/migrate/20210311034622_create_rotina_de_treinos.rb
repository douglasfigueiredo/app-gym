class CreateRotinaDeTreinos < ActiveRecord::Migration[6.1]
  def change
    create_table :rotina_de_treinos do |t|
      t.references :rotina, null: false, foreign_key: true
      t.references :treino, null: false, foreign_key: true

      t.timestamps
    end
  end
end
