Rails.application.routes.draw do

  # Home page
  get "/", to: "home#index", as: "root"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
