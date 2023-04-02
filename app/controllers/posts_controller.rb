class PostsController < ApplicationController

  before_action :verify_auth

  def create
    post = user.posts.create(post_params)
    if post.valid?
      app_response(status: :created, data: post)
    else
      app_response(status: :unprocessable_entity, data: post.errors, message: 'failed')
    end
  end


  def index
    user.posts.all
    app_response(message: 'success', data: posts)
  end

private

  def post_params
    params.permit(:title, :image, :description)
  end
end
