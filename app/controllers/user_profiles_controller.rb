class UserProfilesController < ApplicationController

  before_action :verify_auth

  def create
    userprofile = UserProfile.create(user_profile_params)
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
    userprofile = user.userprofiles.find(params[:id]).update(userprofile_params)
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
    user.userprofiles.find(params[:id]).destroy
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

  def user_profile_params
    params.permit(:username, :email, :bio, :user_id)
  end
end
