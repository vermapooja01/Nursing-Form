Rails.application.routes.draw do
  resources :prns
  resources :orders
  resources :mars
  resources :labs
  resources :histories
  resources :patients do
    resources :submissions do
      get "/complete_the_form", to: "submissions#complete_submission"
    end
    resources :histories do
      resources :orders
      resources :prns
      resources :labs
      resources :mars
    end
  end
  resources :users
  resources :submissions do
    get "/complete_the_form", to: "submissions#complete_submission"
  end


  root to: "submissions#index"

  # Admin Namespace
  namespace :admin do
    root to: "admin#index"
    resources :patients do
      resources :histories do
        resources :prns
        resources :orders
        resources :mars do
          resources :nurse_activities
          resources :one_time_orders
        end
        resources :one_time_orders
        resources :labs
      end
    end

    resources :users
  end

  # Route for the about Us
  get "aboutus", to: "static_pages#aboutus"
  #routes for sso
  get "/signin", to: "sessions#new"
  get "/create_session", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
  #get "/form", to: "users#signup"
  get "/complete_the_form", to: "submissions#complete_submission"
  #get "/new_users", to: "users#form"
end
