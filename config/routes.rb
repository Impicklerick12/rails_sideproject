Rails.application.routes.draw do

  get '/polaroids', to: "polaroids#index"
  get '/polaroids/edit'
  get "/polaroids/new", to: "polaroids#new", as: "new"
  get "/polaroids/:id", to: "polaroids#show", as: "polaroid"
  post "/polaroids", to: "polaroids#create"

  # Home page
  get "/", to: "home#index", as: "root"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
