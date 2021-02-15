class CreateItemExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :item_exercises do |t|
      t.string :name
      t.string :guide
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
