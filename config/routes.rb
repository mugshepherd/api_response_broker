Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  
  resources :responses
  root 'responses#index'
end
