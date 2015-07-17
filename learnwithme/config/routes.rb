Rails.application.routes.draw do
  resources :courses do
    resources :articles
    resources :images
    resources :video
  end

  devise_for :users
  root 'courses#index'


end
