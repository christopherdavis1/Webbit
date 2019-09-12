Rails.application.routes.draw do

  resources :models
  resources :submissions
  devise_for :users
  root to: "home#index"

end
