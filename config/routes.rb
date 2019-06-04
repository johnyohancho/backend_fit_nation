Rails.application.routes.draw do
  resources :user_workouts
  resources :workouts
  resources :meals
  resources :daily_snaps
  resources :user_settings
  resources :relationships
  resources :users
  post '/login', to: 'sessions#create', as: 'login'
end
