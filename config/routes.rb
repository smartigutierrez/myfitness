Rails.application.routes.draw do
  devise_for :users
  resources :exercises
  resources :workouts
  
  get 'pages/about'
  get 'pages/calendar'
  get 'pages/random'
  root 'pages#home'

  post 'generate_random_workout', to: 'workouts#generate_random_workout', as: :generate_random_workout
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
