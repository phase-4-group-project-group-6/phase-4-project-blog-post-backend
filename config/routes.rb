Rails.application.routes.draw do
  resources :user_posts, only: [:index, :show, :create, :update, :destroy]
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :profiles, only: [:index, :show, :create, :destroy]
  resources :authors, only: [:index, :show]
  resources :posts, only: [:index, :show]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
end
