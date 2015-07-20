Rails.application.routes.draw do
  root 'courses#index'
  get '/courses/data' => 'courses#data'
  resources :courses do
    resources :sheets
    resources :enrollments
  end

  resources :sheets

  resources :users

  get '/signup' => 'users#new'
  get '/users' => 'users#new'

  get '/login' => 'users#new'
  post '/login' => 'users#create'
  get '/logout' => 'users#logout'



end
