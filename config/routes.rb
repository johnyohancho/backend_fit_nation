Rails.application.routes.draw do
  resources :user_workouts
  resources :workouts, only: [:show, :create, :update, :destroy]
  resources :meals, only: [:show, :create, :update, :destroy]
  resources :daily_snaps, only: [:show, :create, :update, :destroy]
  resources :user_settings, only: [:show, :create, :update, :destroy]
  resources :relationships
  resources :users, only: [:index, :show, :create, :update, :destroy]
  post '/login', to: 'sessions#create', as: 'login'
end
