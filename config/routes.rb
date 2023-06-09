Rails.application.routes.draw do
  # resources :user_posts, only: [:index, :show, :create, :update, :destroy]
  # resources :comments, only: [:index, :show, :create, :update, :destroy]
  # resources :profiles, only: [:index, :show, :create, :destroy]
  # resources :authors, only: [:index, :show]
  # resources :posts, only: [:index, :show]

  # reset password
  post "/reset_password", to: "users#reset_password"
  put "/update_password/:reset_password_token", to: "users#update_password"
  put "/reset_password/:reset_password_token", to: "users#update_password"


  # user
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  delete '/users/logout', to: 'users#logout'
  get '/user/login/check', to: 'users#check_login_status'

  # post
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'


  # comments
  post '/comments', to: 'comments#create'
  put '/comments/:id', to: 'comments#update'
  delete '/comments/:id', to: 'comments#destroy'
  get '/comments', to: 'comments#index'


  # comments
  post '/user_profile', to: 'user_profiles#create'
  put '/user_profile/:id', to: 'user_profiles#update'
  delete '/user_profile/:id', to: 'user_profiles#destroy'
  get '/user_profile', to: 'user_profiles#index'



  # user_posts
  post '/user_posts', to: 'user_posts#create'
  put '/user_posts/:id', to: 'user_posts#update'
  delete '/user_posts/:id', to: 'user_posts#destroy'
  get '/user_posts', to: 'user_posts#index'


  # verify auth
  get '/verify', to: 'application#verify_auth'





  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # post "/signup", to: "users#create"
  # post "/login", to: "sessions#create"
  # get "/me", to: "users#show"
  # delete "/logout", to: "sessions#destroy"
end
