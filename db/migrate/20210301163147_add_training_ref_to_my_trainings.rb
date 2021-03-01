class AddTrainingRefToMyTrainings < ActiveRecord::Migration[6.1]
  def change
    add_reference :my_trainings, :training, null: false, foreign_key: true
  end
end
