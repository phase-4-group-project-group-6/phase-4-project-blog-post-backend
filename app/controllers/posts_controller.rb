class PostsController < ApplicationController

  before_action :verify_auth

 def index
  user.posts.all
  app_response(message: 'success', data: author)
 end

private

 def post_params
   params.permit(:name, :image, :location)
 end
end
