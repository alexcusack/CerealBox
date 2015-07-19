Rails.application.routes.draw do
  root 'courses#index'

  resources :courses do
    resources :sheets
    resources :enrollments
  end

  resources :sheets

  resources :users

  get '/logout', to: 'users#logout'
end
