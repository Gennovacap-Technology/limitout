Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1 do
      resources :expeditions
      resources :hunting_amenities
      resources :animals
      resources :hunting_properties
      resources :payout_preferences
      resources :payment_methods
      resources :indentifications
      resources :reservations
      resources :users
    end
  end

end
