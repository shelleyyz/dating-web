Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  root :to => 'pages#home'
  resources :pages
  resources :questions, only: [:index, :show]
  get 'questions/results' => 'questions#results'
  post '/questions' => 'questions#form'
  # root :to => 'session#new'
    # get "/" => 'pages#home'
    # get '/users/profile' => 'users#profile'
  resources :users
  resources :relationships
  resources :mailboxes
  get '/mailboxes/new/:id' => 'mailboxes#new'
  post '/mailboxes/mail/:id' => 'mailboxes#mail'
  mount ActionCable.server => '/cable'

  resources :conversations
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform the login
  delete '/login' => 'session#destroy' #perform signout/'delete' the signin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
