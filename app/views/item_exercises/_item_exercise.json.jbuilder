json.extract! item_exercise, :id, :name, :guide, :exercise_id, :created_at, :updated_at
json.url exercise_item_exercise_url(@exercise, item_exercise, format: :json)
