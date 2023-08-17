Rails.application.routes.draw do
  devise_for :users
  resources :exercises
  resources :workouts
  root 'pages#home'

  get 'pages/about'
  get 'pages/calendar'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
