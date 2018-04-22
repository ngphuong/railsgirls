Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
    root 'ideas#index'
  resources :comments
  get 'pages/info'
  resources :ideas

  get 'pages/info'
  resource :user, only: [:edit, :update]
  
  resources :ideas, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
