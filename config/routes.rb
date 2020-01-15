Rails.application.routes.draw do
  resources :expenses
  resources :fields
  resources :cows
  resources :users

  get '/signin' => 'sessions#new', as: '/'
  post '/login' => 'sessions#create', as: 'login'

  get 'users/:id/edit' => 'users#edit'
  post '/logout' => 'sessions#destroy'

  get '/cows' => 'cows#new'
  post '/cows/new' => 'cows#create'
  get  '/cows/:id' =>  'cows#show'
  delete '/cows/:id' => 'cows#destroy'
 
  root 'welcome#home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end