class PostsController < ApplicationController

  before_action :verify_auth

 def index
  user.posts.all
  app_response(message: 'success', data: posts)
 end

private

 def post_params
   params.permit(:title, :image, :description)
 end
end
