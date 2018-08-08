Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :pages
  resources :categories, only: [:index, :show, :update]

  # post 'questions/results/:id' => 'questions#results'
  # post 'questions/:id' => 'questions#scores', :as => "questions_scores"
  post '/categories' => 'categories#form'
  get '/categories/results/:id' => 'categories#results'
  get '/categories/myresults/:id' => 'categories#myresults'
  # root :to => 'session#new'
    # get "/" => 'pages#home'
    # get '/users/profile' => 'users#profile'
  resources :users

  resources :relationships, only: [:index, :create, :show]
  post '/relationships/:id' => 'relationships#create'
  get '/relationship/:id' => 'relationships#show'
  delete '/relationships/:id' => 'relationships#destroy'

  resources :mailboxes
  get '/mailboxes/new/:id' => 'mailboxes#new'
  post '/mailboxes/mail/:id' => 'mailboxes#mail'
  get '/api/mailboxes/:id' => 'mailboxes#api_show'
  post '/api/mailboxes/mail/:id' => 'mailboxes#api_mail'
  resources :conversations
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform the login
  delete '/login' => 'session#destroy' #perform signout/'delete' the signin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
