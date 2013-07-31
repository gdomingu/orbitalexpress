Orbitexpress::Application.routes.draw do

  resources :reservations


  resources :flights


  resources :user_sessions, :only => [:new, :create, :destroy]
  resources :users


  resources :locations

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  root :to => 'flights#index'


end
