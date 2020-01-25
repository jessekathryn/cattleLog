Rails.application.routes.draw do
  resources :expenses
  resources :fields
  resources :cows
  resources :users
  resources :tools
  
  resources :reports do 
    resources :cows
  end

  get '/users/:id' => 'users#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  
  get '/signin' => 'sessions#new', as: '/login'
  post '/signin' => 'sessions#create', as: 'user/home'

  get '/signout' => 'welcome#home'
  post '/signout' => 'sessions#destroy', as: 'logout'             
  
  root 'welcome#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  