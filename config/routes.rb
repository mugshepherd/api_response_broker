Rails.application.routes.draw do
  use_doorkeeper do
  	controllers :applications => 'doorkeeper/custom_applications'
  end
  devise_for :users
  
  resources :responses
  root 'responses#index'
end
