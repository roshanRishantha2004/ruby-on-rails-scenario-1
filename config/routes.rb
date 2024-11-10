Rails.application.routes.draw do
  
  get "about", to: "about#index"

  get "sign_up", to: "signup#signup"

  post "sign_up", to: "signup#create"

end
