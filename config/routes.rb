Rails.application.routes.draw do
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home" => "home#index", :as => "home"
end
