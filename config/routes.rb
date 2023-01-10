Rails.application.routes.draw do
  resources :vitals
  resources :questions
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #User Route
  get "/me", to: "users#show_me"
  get "/users/:id", to: "users#show"
  post "/signup", to: "users#create"
end
