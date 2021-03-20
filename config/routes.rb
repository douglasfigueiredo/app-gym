Rails.application.routes.draw do
  resources :rotinas do
    resources :rotina_de_treinos
  end

  resources :tipo_de_exercicio_do_treinos
  resources :exercicios
  resources :tipo_de_exercicios
  resources :treinos
  resources :tipo_de_treinos

  
  resources :exercicio_series
  resources :exercicio_repeticaos
  
  # Site
  root 'site#index'
  post '/cadastro', to: 'site#cadastro'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
