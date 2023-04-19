Rails.application.routes.draw do
  get 'repositories/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'repositories#index'
  resources :repositories, only: :index

  # Defines the root path route ("/")
  # root "articles#index"
end
