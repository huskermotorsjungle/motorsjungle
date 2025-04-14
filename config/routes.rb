Rails.application.routes.draw do
  get "/thecarjungle", to: "car_jungle#show"
  root "home#welcome"
  post "/leads", to: "leads#create", as: "leads"
end
  

