Rails.application.routes.draw do

  resources :cows, only: [:create, :edit, :update]

  resources :users do 
    resources :cows, only: [:show, :index, :new]
    # resources :expenses
    # resources :fields
    # resources :tools
    # resources :pages
    # resources :reports
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

  