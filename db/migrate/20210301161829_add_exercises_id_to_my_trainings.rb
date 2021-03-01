class AddExercisesIdToMyTrainings < ActiveRecord::Migration[6.1]
  def change
    add_column :my_trainings, :exercises_id, :text, array: true, default: []
  end
end
