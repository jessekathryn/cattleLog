Rails.application.routes.draw do
  resources :sessions

  resources :users do 
    resources :expenses
    resources :fields
    resources :cows
    resources :tools
    resources :pages
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

  