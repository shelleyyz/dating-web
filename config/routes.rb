Rails.application.routes.draw do

  get 'session/new'
  get 'mailboxes/index'
  get 'mailboxes/new'
  get 'mailboxes/show'
  get 'relationships/index'
  get 'relationships/show'
  get 'relationships/new'
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
