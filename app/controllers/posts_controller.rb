class PostsController < ApplicationController

  before_action :verify_auth

  def create
    post = Post.create(post_params)
    if post.valid?
      app_response(status: :created, data: post)
    else
      app_response(status: :unprocessable_entity, data: post.errors, message: 'failed')
    end
  end

  def update
    post = Post.find(params[:id]).update(comment_params)
    if post
      app_response(data: { info: "updated post successfully" })
    else
      app_response(
        message: "failed",
        data: {
          info: "something went wrong. could not update post"
        },
        status: :unprocessable_entity
      )
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    app_response(
      message: "success",
      data: {
        info: "deleted post successfully"
      },
      status: 204
    )
  end


  def index
    post = Post.all
   app_response(message: 'success', data: post)
  end

private

  def post_params
    params.permit(:title, :image, :description, :user_id)
  end
end
