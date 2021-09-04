Rails.application.routes.draw do
  resources :users
  resources :recipes
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home" => "home#index", :as => "home"
  get "sign_in" => "sessions#new", :as => "sign_in"
  get "sign_out" => "sessions#destroy", :as => "sign_out"
end
