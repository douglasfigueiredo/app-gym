Rails.application.routes.draw do
  # LOGIN DO SISTEMA
  # constraints subdomain: "login" do
  #   scope module: 'login' do
  #     get "/", to: "home#index"
  #     post "/signin", to: "home#signin"
  #   end
  # end

  # SIGNUP DO SISTEMA
  # constraints subdomain: "signup" do
  #   scope module: 'signup' do
  #     get "/", to: "register#index"
  #     post "/create", to: "register#create"
  #   end
  # end

  
  # DASHBOARD DO CLIENTE
  constraints subdomain: "dashboard" do
    scope module: 'dashboard' do
      get "/", to: "home#index"
      get "/home", to: "home#index"
      get "/logout", to: "home#logout"

      # signup/register
      get "/signup", to: "signup#index"
      post "/create", to: "signup#create"

      # create profile
      get "/profile", to: "profile#show"
      get "/profile/new", to: "profile#new"
      get "/profile/edit", to: "profile#edit"
      post "/profile/create", to: "profile#create"
      patch '/profile/update', to: 'profile#update'
      
      # my trainings
      resources :my_trainings

      # login
      get "/login", to: "login#index"
      post "/signin", to: "login#signin"
    end
  end

  # ADMIN DO SISTEMA
  constraints subdomain: "admin" do
    scope module: 'admin' do
      # index
      get "/", to: "dashboard#index"

      # Users
      resources :users
      resources :profiles
      
      # Treinos
      resources :trainings do
        resources :item_trainings
      end
      # Exercícios
      resources :exercises do
        resources :item_exercises
        get "/item_exercises", to: "item_exercises#index"
      end
    end
  end

  # Site
  root 'site#index'
  post '/cadastro', to: 'site#cadastro'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
