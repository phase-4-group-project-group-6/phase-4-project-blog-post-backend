class UserProfilesController < ApplicationController

  before_action :verify_auth

  def create
    user_profile = user.user_profile.create(user_profile_params)
    if user_profile.valid?
      app_response(status: :created, data: user_profile)
    else
      app_response(
        status: :unprocessable_entity,
        data: user_profile.errors,
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
    params.permit(:title, :content)
  end
end
