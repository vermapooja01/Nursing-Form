Rails.application.routes.draw do
  resources :users
  resources :submissions do
    get "/complete_the_form", to: "submissions#complete_submission"
  end

  root to: "submissions#index"
  # Route for the about Us
  get "aboutus", to: "static_pages#aboutus"
  #routes for sso
  get "/signin", to: "sessions#new"
  get "/create_session", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
  #get "/form", to: "users#signup"
  get "/complete_the_form", to: "submissions#complete_submission"
  get "/new_users", to: "users#form"
end
