class UserPostsController < ApplicationController
  before_action :verify_auth

  def create
    userpost = user.user_posts.create(user_post_params)
    if userpost.valid?
      app_response(status: :created, data: userpost)
    else
      app_response(
        status: :unprocessable_entity,
        data: userpost.errors,
        message: 'failed'
      )
    end
  end

  def update
    userpost = user.userposts.find(params[:id]).update(userpost_params)
    if userpost
      app_response(data: { info: 'updated userpost successfully' })
    else
      app_response(
        message: 'failed',
        data: {
          info: 'something went wrong. could not update userpost'
        },
        status: :unprocessable_entity
      )
    end
  end

  def destroy
    user.userposts.find(params[:id]).destroy
    app_response(
      message: 'success',
      data: {
        info: 'deleted userpost successfully'
      },
      status: 204
    )
  end

  def index
    userpost = user.userposts.all
    app_response(message: 'success', data: userposts)
  end

  private

  def user_post_params
    params.permit(:title, :content)
  end
end
