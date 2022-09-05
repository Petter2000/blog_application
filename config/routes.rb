Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  get '/u/:id', to: 'users#profile', as: 'user'

  resources :posts

  #get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  root 'pages#home'
  #get 'posts', to: 'pages/post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
