class UsersController < ApplicationController

  before_action :session_expired?, only: [:check_login_status]

  def register
    user = User.create(user_params)
    if user.valid?
      save_user(user.id)
      app_response(message: 'Registration was successful', status: :created, data: user)
    else
      app_response(message: 'Something went wrong during registration', status: :unprocessable_entity, data: user.errors)
    end
  end

  def login
    sql = 'username = :username OR email = :email'
    user = User.where(sql, { username: user_params[:username], email: user_params[:email] }).first
    if user&.authenticate(user_params[:password])
      save_user(user.id)
      token = encode(user.id, user.email)
      app_response(message: 'Login was successful', status: :ok, data: { user: user, token: token })
    else
      app_response(message: 'Invalid username/email or password', status: :unauthorized)
    end
  end

  def logout
    remove_user
    app_response(message: 'Logout successful')
  end

  def check_login_status
    app_response(message: 'success', status: :ok)
  end

  def reset_password
    user = User.find_by(email: params[:email])
    if user
      user.generate_reset_password_token
      user.save
      render json: { message: 'Reset password token generated', reset_password_token: user.reset_password_token }
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  def update_password
    user = User.find_by(reset_password_token: params[:reset_password_token])
    if user&.reset_password_token_valid?
      user.update(password: params[:password], reset_password_token: nil, reset_password_token_expires_at: nil)
      render json: { message: 'Password updated successfully' }
    else
      render json: { error: 'Invalid or expired reset password token' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end

end













# signup
  # def create
  #   user = User.create(user_params)
  #   if user.valid?
  #     render json: user, status: :created
  #   else
  #     render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # private

  # def user_params
  #   params.permit(:username, :password, :password_confirmation, :email)
  # end
