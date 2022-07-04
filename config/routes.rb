Rails.application.routes.draw do
  resources :appointments
  resources :clients
  resources :offers
  resources :services
  resources :technicians
  resources :businesses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
