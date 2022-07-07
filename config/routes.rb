Rails.application.routes.draw do

  # home page
  get "/", to: "application#welcome"

  # all businesses dropdown page -> individual business page w/ appointment form
  get "/businesses/welcome", to: "businesses#welcome"

  # additional routes to show, edit, and update businesses
  resources :businesses, only: [:index, :show, :edit, :update]

  # new appointment page houses the app flow; show confirmation page
  resources :appointments, only: [:new, :create, :show, :destroy]

  # calendar download link for appointment once confirmed
  get "/appointments/:id/calendar", to: "appointments#calendar"

end
