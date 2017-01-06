Rails.application.routes.draw do

  constraints subdomain: 'api' do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
