Rails.application.routes.draw do
  resources :users
  resources :submissions do
    get :complete_form, to: "submissions#complete_submission"
  end

  root to: "static_pages#home"
  # Route for the about Us
  get "aboutus", to: "static_pages#aboutus"
  #routes for sso
  get "/signin", to: "sessions#new"
  get "/create_session", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
  get "/form", to: "static_pages#signup"

end
