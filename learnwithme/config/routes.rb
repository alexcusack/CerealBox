Rails.application.routes.draw do
  resources :courses do
    resources :articles
    resources :images
    resources :videos
  end

  resources :users

  root 'courses#index'


end
