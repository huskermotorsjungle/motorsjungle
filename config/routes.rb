Rails.application.routes.draw do
  # Update Devise routes to accept GET and DELETE for sign_out
  devise_for :users, sign_out_via: [:get, :delete]

  root "home#welcome"
  get  "/thecarjungle", to: "car_jungle#show"
  post "/leads",         to: "leads#create", as: "leads"
  resources :listings, only: %i[new create index show edit update destroy]
end



  

