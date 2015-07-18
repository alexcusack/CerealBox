Rails.application.routes.draw do
  resources :courses do
    resources :articles
    resources :images
    resources :videos
  end

  root 'courses#index'


end
