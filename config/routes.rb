Rails.application.routes.draw do

  # business routes
  get "/", to: "application#welcome"
  get "/businesses/welcome", to: "businesses#welcome"
  resources :businesses, only: [:index, :show]

  #
  resources :appointments, only: [:new, :create, :show]
  get "/appointments/:id/calendar", to: "appointments#calendar"
  #resources :clients
  #resources :offers
  #resources :services
  #resources :technicians, only: [:index]

end
