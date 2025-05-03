Rails.application.routes.draw do
  root "home#welcome"

  get  "/thecarjungle", to: "car_jungle#show"
  post "/leads",         to: "leads#create", as: "leads"

  resources :listings, only: %i[new create index show edit update destroy]

  # Only allow HTTP-Basic admins to hit /flipper
end
  

