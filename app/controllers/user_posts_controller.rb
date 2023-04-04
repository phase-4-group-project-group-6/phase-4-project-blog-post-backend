class UserPostsController < ApplicationController
  before_action :verify_auth

  def create
    userpost = UserPost.create(user_post_params)
    if userpost.valid?
      app_response(status: :created, data: userpost)
    else
      app_response(
        status: :unprocessable_entity,
        # Returning the errors that were generated by the model.
        data: userpost.errors,
        message: 'failed'
      )
    end
  end

  def update
    userpost = UserPost.find(params[:id]).update(user_post_params)
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
    UserPost.find(params[:id]).destroy
    app_response(
      message: 'success',
      data: {
        info: 'deleted userpost successfully'
      },
      status: 204
    )
  end

  def index
    userpost = UserPost.all
    app_response(message: 'success', data: userpost)
  end

  private

  def user_post_params
    params.permit(:user_id, :post_id, :title, :content)
  end
end

