Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :surveys, only: [:index] do
    resources :questions, only: [:show]
  end

  resources :houses, only: [:index] do
    resources :languages, only: [:show]
  end
end
