Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :tweets, only: :index
end
