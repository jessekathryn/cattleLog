Rails.application.routes.draw do
  resources :expenses
  resources :fields
  resources :cows
  resources :users
  resources :tools
  resources :reports


  get '/signin' => 'sessions#new', as: '/'
  post '/login' => 'sessions#create', as: 'login'

  get '/signout' => 'welcome#home'
  post '/signout' => 'sessions#destroy', as: 'logout'                                             

  root 'welcome#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end