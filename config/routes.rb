Rails.application.routes.draw do

  resources :cows
  resources :fields
  resources :tools
  resources :expenses
  resources :pages
  resources :reports

  resources :users do 
    resources :cows, only: [:show, :index, :new]
    resources :expenses, only: [:show, :index, :new]
    resources :fields, only: [:show, :index, :new]
    resources :tools, only: [:show, :index, :new]
    resources :pages, only: [:show, :index, :new]
    resources :reports, only: [:show, :index, :new]
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  
  get '/signin' => 'sessions#new', as: '/login'
  post '/signin' => 'sessions#create', as: 'user/home'

  get '/signout' => 'welcome#home'
  post '/signout' => 'sessions#destroy', as: 'logout'           
  
  get '/search' => 'pages#search', :as => 'search_page'

  root 'welcome#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  