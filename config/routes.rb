Rails.application.routes.draw do
  resources :workout_logs
  resources :workouts
  resources :meals
  resources :daily_snaps
  resources :user_settings
  resources :relationships
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
