Rails.application.routes.draw do
  #AuthController#Login
  post '/login', to: "auth#login"
  post '/signup', to: "users#create"
  get  '/profile', to: "users#profile"
  get '/allparkingspots', to: "parking_spots#index"
  post '/currentlocation', to: "parking_spots#create"
end
