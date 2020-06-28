Rails.application.routes.draw do

  devise_for :users
  resources :tests
  get "tests", to: "tests#index"

  get '/polaroids', to: "polaroids#index"
  get '/polaroids/:id/edit', to: "polaroids#edit", as: "edit_polaroid"
  get "/polaroids/new", to: "polaroids#new", as: "new"
  get "/polaroids/:id", to: "polaroids#show", as: "polaroid"
  post "/polaroids", to: "polaroids#create"
  patch "/polaroids/:id", to: "polaroids#update"
  put "/polaroids/:id", to: "polaroids#update"
  delete "/polaroids/:id", to: "polaroids#delete" # NEED TO ADD THIS FEATURE

  # Home page
  get "/", to: "home#index", as: "root"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
