class CreateRotinas < ActiveRecord::Migration[6.1]
  def change
    create_table :rotinas do |t|
      t.string :nome
      t.integer :quantidade_dias

      t.timestamps
    end
  end
end
