Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :operations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#splash_page'
end
