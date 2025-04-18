Rails.application.routes.draw do
  root "home#welcome"

  get "/thecarjungle", to: "car_jungle#show"
  post "/leads", to: "leads#create", as: "leads"

  resources :listings, only: [:new, :create, :index, :edit, :update, :destroy]
end

  

