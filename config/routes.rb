Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :questions, only: [:show]
  resources :answers, only: [:create]

  get "/houses/frontend", to: "houses#frontend"
  get "/houses/backend", to: "houses#backend"
  get "/houses/gamedev", to: "houses#gamedev"
  get "/houses/datascience", to: "houses#datascience"

  resources :houses, only: [:show], param: :name do
    resources :languages, only: [:show], param: :name
  end
end
