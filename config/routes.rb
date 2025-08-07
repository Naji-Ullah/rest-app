Rails.application.routes.draw do

  #get "home/index"
  get "home/sign_in"
  get "home/about"
  get "home/sign_up"
  get "home/main_menu"
  root "home#index"

  namespace :api do
    namespace :v1 do
      post "login", to: "sessions#create"
      post "register", to: "registrations#create"
      get "dashboard", to: "dashboard#show"
    end
  end

  get "login", to: "pages#login"
  get "signup", to: "pages#signup"
  get "dashboard", to: "pages#dashboard"

  get "up" => "rails/health#show", as: :rails_health_check
end
