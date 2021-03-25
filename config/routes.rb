Rails.application.routes.draw do
  resources :follows
  resources :likes

  resources :pictures 
  resources :comments

  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
