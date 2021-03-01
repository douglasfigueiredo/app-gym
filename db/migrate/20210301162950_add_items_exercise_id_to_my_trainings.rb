class AddItemsExerciseIdToMyTrainings < ActiveRecord::Migration[6.1]
  def change
    add_column :my_trainings, :items_exercise_id, :text, array: true, default: []
  end
end
