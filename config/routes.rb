Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :questions, only: [:show]
  resources :answers, only: [:create]

  resources :houses, only: [:index] do
    resources :languages, only: [:show]
  end
end
