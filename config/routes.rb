Rails.application.routes.draw do
  resources :posts
  root 'pages#home'
  #get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  #get 'posts', to: 'pages/post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
