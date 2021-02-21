Rails.application.routes.draw do
 
  constraints subdomain: "admin" do
    scope module: 'admin' do
      # index
      get "/", to: "dashboard#index"
      
      # Users
      resources :users
      # Treinos
      resources :trainings do
        resources :item_trainings
      end
      # Exercícios
      resources :exercises do
        resources :item_exercises
      end
    end
  end

  # Site
  root 'site#index'
  post '/cadastro', to: 'site#cadastro'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
