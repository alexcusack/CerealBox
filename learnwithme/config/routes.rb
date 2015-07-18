Rails.application.routes.draw do
  root 'courses#index'

  resources :courses do
    resources :articles
    resources :images
    resources :videos
    resources :contents
  end

  resources :users

end
