Rails.application.routes.draw do
  resources :expenses
  resources :fields
  resources :cows
  resources :users
  
  get '/signin' => 'sessions#new', as: '/'
  post '/login' => 'sessions#create', as: 'login'
  get '/login' => 'users#show'
  get '/' => 'users#new'
  post '/cows/:id' => 'cowss#create'
  root 'welcome#home'
  
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end