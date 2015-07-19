Rails.application.routes.draw do
  root 'sheets#index'

  resources :courses do
    resources :sheets
  end
  resources :sheets

  resources :users

  get '/logout', to: 'users#logout'
end
