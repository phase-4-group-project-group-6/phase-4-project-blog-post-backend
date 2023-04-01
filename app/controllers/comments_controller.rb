class CommentsController < ApplicationController
  before_action :verify_auth

  def create
    comment = user.comments.create(comment_params)
    if comment.valid?
      app_response(status: :created, data: comment)
    else
      app_response(
        status: :unprocessable_entity,
        data: comment.errors,
        message: "failed"
      )
    end
  end

  def update
    comment = user.comments.find(params[:id]).update(comment_params)
    if comment
      app_response(data: { info: "updated comment successfully" })
    else
      app_response(
        message: "failed",
        data: {
          info: "something went wrong. could not update comment"
        },
        status: :unprocessable_entity
      )
    end
  end

  def destroy
    user.comments.find(params[:id]).destroy
    app_response(
      message: "success",
      data: {
        info: "deleted comment successfully"
      },
      status: 204
    )
  end

  def index
    comment = user.comments.all
    app_response(message: "success", data: todos)
  end

  private

  def comment_params
    params.permit(:description)
  end
end
