Rails.application.routes.draw do
  resources :user_posts, only: [:index, :show, :create, :update, :destroy]
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :profiles, only: [:index, :show, :create, :destroy]
  resources :authors, only: [:index, :show]
  resources :posts, only: [:index, :show]




  # user
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  delete '/users/logout', to: 'users#logout'
  get '/user/login/check', to: 'users#check_login_status'


  # verify auth
  get '/verify', to: 'application#verify_auth'




  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # post "/signup", to: "users#create"
  # post "/login", to: "sessions#create"
  # get "/me", to: "users#show"
  # delete "/logout", to: "sessions#destroy"
end
