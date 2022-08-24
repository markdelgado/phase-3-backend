Rails.application.routes.draw do
  resources :users
  resources :pet_sitters
  resources :reviews
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/reviews', to:'reviews#index'
  get '/pet_sitters', to: 'pet_sitters#index'
  get '/pet_sitters/:id', to: 'pet_sitters#show'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
end
