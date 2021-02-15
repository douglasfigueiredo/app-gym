class CreateItemTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :item_trainings do |t|
      t.references :training, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
