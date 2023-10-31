Rails.application.routes.draw do
  #resources :users
  resources :users, except: :show
  root 'users#index'
  
  get 'users/index'
  get 'users/new'
  post 'users/create'
  delete 'users/:id', to: 'users#destroy'
  
  
  #get 'users/:id', to: 'users#show', as: :users
  

  
  #get 'users/:id', to: 'users#show', as: :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end