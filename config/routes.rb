Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"

  resources :airports, only: [:show]
  resources :bookings, only: [:show, :new, :create]
  resources :flights, only: [:index]
  resources :passengers, only: [:show, :new, :create]
end
