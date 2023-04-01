class UserProfilesController < ApplicationController

  before_action :verify_auth

  def create
    userprofile = user.userprrofiles.create(userprofile_params)
    if userprofile.valid?
      app_response(status: :created, data: userprofile)
    else
      app_response(
        status: :unprocessable_entity,
        data: userprofile.errors,
        message: "failed"
      )
    end
  end

  def update
    userprofile = user.userprrofiles.find(params[:id]).update(userprofile_params)
    if userprofile
      app_response(data: { info: "updated userprofile successfully" })
    else
      app_response(
        message: "failed",
        data: {
          info: "something went wrong. could not update userprofile"
        },
        status: :unprocessable_entity
      )
    end
  end

  def destroy
    user.userprrofiles.find(params[:id]).destroy
    app_response(
      message: "success",
      data: {
        info: "deleted userprofile successfully"
      },
      status: 204
    )
  end

  def index
    userprofile = user.usersprofiles.all
    app_response(message: "success", data: userprrofiles)
  end

  private

  def userprofile_params
    params.permit(:title, :content)
  end
end
