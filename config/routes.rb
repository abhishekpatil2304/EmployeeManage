Rails.application.routes.draw do
  get 'pages/index'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:new, :create]

  root 'pages#index'
  devise_for :users, skip: [:registrations]
  # devise_scope :user do
  #   get 'users/sign_up', to: 'devise/registrations#new', as: 'new_user_registration'
  #   post 'users', to: 'devise/registrations#create', as: 'user_registration'
  #   # Add other custom routes if needed
  # end
end
