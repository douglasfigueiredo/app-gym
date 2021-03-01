class CreateMyTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :my_trainings do |t|
      t.integer :quantity
      t.string :status
      t.references :trainings, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
