class CreateTreinos < ActiveRecord::Migration[6.1]
  def change
    create_table :treinos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
