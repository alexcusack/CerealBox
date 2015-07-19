Rails.application.routes.draw do
  resources :sheets
  root 'courses#index'

  resources :courses do
    resources :contents
  end

  resources :users
end
