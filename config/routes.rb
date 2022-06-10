Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :questions, only: [:show]
  resources :answers, only: [:create]

  get "/houses/front-end", to: "houses#front-end"
  get "/houses/back-end", to: "houses#back-end"
  get "/houses/game-dev", to: "houses#gamedev"
  get "/houses/data-science", to: "houses#data-science"

  resources :houses, only: [:show], param: :name do
    resources :languages, only: [:show], param: :name
  end
end
