Rails.application.routes.draw do

  root :to => 'pages#home'
    get "/" => 'pages#home'
    get '/users/profile' => 'users#profile'
  resources :users, :only => [:index, :show, :new, :create, :edit, :update, :delete]
  resources :relationships
  resources :mailboxes

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform the login
  delete '/login' => 'session#destroy' #perform signout/'delete' the signin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
