Rails.application.routes.draw do
  get 'search', to: "menus#search"
  resources :categories
  get 'menu', to: "menus#index"
  resources :products
  devise_for :users
  root to: "pages#home"
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
