Rails.application.routes.draw do
  resources :expeditions
  resources :hunting_amenities
  resources :games
  resources :hunting_properties
  resources :payout_preferences
  resources :payment_methods
  resources :indentifications
  resources :reservations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
