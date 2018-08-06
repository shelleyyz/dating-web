Rails.application.routes.draw do
  root :to => 'pages#home'
  # root :to => 'session#new'
    # get "/" => 'pages#home'
    # get '/users/profile' => 'users#profile'
  resources :users
  resources :relationships
  resources :mailboxes
  get '/mailboxes/new/:id' => 'mailboxes#new'
  post '/mailboxes/mail/:id' => 'mailboxes#mail'

  resources :conversations


  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform the login
  delete '/login' => 'session#destroy' #perform signout/'delete' the signin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
