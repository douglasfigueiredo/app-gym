json.extract! my_training, :id, :quantity, :status, :trainings_id, :users_id, :created_at, :updated_at
json.url my_training_url(my_training, format: :json)
