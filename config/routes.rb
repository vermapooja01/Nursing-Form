Rails.application.routes.draw do
  resources :users
  resources :submissions
  root to: "static_pages#home"
  # Route for the about Us
  get "aboutus", to: "static_pages#aboutus"
end
