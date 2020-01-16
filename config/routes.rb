Rails.application.routes.draw do
  resources :expenses
  resources :fields
  resources :cows
  resources :users

  get '/signin' => 'sessions#new', as: '/'
  post '/login' => 'sessions#create', as: 'login'

  get '/signout' => 'welcome#home'
  post '/signout' => 'sessions#destroy', as: 'logout'

  get 'users/:id/edit' => 'users#edit'

  get '/cows' => 'cows#new'
  post '/cows/new' => 'cows#create'
  get  '/cows/:id' =>  'cows#show'

 
  root 'welcome#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end