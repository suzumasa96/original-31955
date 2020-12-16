Rails.application.routes.draw do
  devise_for :users
  root to: 'food_racks#index'
  resources :food_racks
end
