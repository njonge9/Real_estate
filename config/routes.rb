Rails.application.routes.draw do
  get "/dashboard", to:'dashboard#index'
  get 'dashboard/reports'
  # get '/house', to:'homepage#show'
  root 'homepage#main'
  resources :properties
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
