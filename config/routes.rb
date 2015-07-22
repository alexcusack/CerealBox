Rails.application.routes.draw do

  root 'courses#index'

  get '/courses/data' => 'courses#data'

  resources :courses do
    resources :sheets
    resources :enrollments
  end

  get '/sheets/scrape',to: 'sheets#scrape'

  resources :sheets do
    post 'favorites', to: 'favorites#create'
    delete 'favorites', to: 'favorites#destroy'
  end

  resources :users
  resources :charges

  get '/signup' => 'users#new'
  get '/users' => 'users#new'

  post '/fetch-element' => 'sheets#fetch'

  get '/login' => 'users#new'
  post '/login' => 'users#create'
  get '/logout' => 'users#logout'

end
