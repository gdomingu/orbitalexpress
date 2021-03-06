Orbitexpress::Application.routes.draw do

  resources :spaceships


  get 'search' => 'flights#search', :as => "search"

  resources :quarters

  post '/reservations/:id' => 'reservations#create', :as => "new_reservation"
  get '/reservations/:id' => 'reservations#verify', :as => "verify_reservation"
  resources :reservations


  resources :flights


  resources :user_sessions, :only => [:new, :create, :destroy]
  resources :users


  resources :locations

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  root :to => 'flights#index'


end
