Rails.application.routes.draw do
  resources :trainings do
    resources :item_trainings
  end
  resources :exercises do
    resources :item_exercises
  end
  resources :users

  get '/admin', to: 'admin#index'
  post '/cadastro', to: 'site#cadastro'

  root 'site#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
