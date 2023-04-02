Rails.application.routes.draw do
  # resources :user_posts, only: [:index, :show, :create, :update, :destroy]
  # resources :comments, only: [:index, :show, :create, :update, :destroy]
  # resources :profiles, only: [:index, :show, :create, :destroy]
  # resources :authors, only: [:index, :show]
  # resources :posts, only: [:index, :show]




  # user
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  delete '/users/logout', to: 'users#logout'
  get '/user/login/check', to: 'users#check_login_status'

  # post
  post '/posts', to: 'posts#create'

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
  put '/userposts/:id', to: 'userposts#update'
  delete '/userposts/:id', to: 'userposts#destroy'
  get '/userposts', to: 'userposts#index'


  # verify auth
  get '/verify', to: 'application#verify_auth'





  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # post "/signup", to: "users#create"
  # post "/login", to: "sessions#create"
  # get "/me", to: "users#show"
  # delete "/logout", to: "sessions#destroy"
end
