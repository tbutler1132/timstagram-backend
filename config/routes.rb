Rails.application.routes.draw do
  resources :follows
  resources :likes
  resources :comments
  resources :pictures
  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
