Rails.application.routes.draw do

  # business routes
  get "/", to: "businesses#index"
  get "/businesses/welcome", to: "businesses#welcome"
  resources :businesses, only: [:show]

  #
  resources :appointments, only: [:new, :create, :show]
  resources :clients
  resources :offers
  resources :services
  resources :technicians, only: [:index]

end
