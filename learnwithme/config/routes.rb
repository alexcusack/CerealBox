Rails.application.routes.draw do
  resources :courses do
    resources :articles
    resources :images
    resources :videos
  end

  resources :sessions

  root 'courses#index'


end
