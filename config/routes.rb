Rails.application.routes.draw do
  resources :user_posts
  resources :comments
  resources :profiles
  resources :authors
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "users/signup", to: "users#create"
  post "users/login", to: "sessions#create"
  get "user/me", to: "users#show"
  delete "users/logout", to: "sessions#destroy"
end
