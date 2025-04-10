Rails.application.routes.draw do
  root "home#welcome"
  post "/leads", to: "leads#create", as: "leads"
end  

