class UsersController < ApplicationController
  # before_action :authenticate_user! # Require authentication for all actions
  # before_action :authorize_user_create, only: [:new, :create] # Authorize user creation actions

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     redirect_to root_path, notice: "User was successfully created."
  #   else
  #     render :new
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end

  # def authorize_user_create
  #   # Check if the current user can create users
  #   # Implement your own authorization logic here based on your application's requirements
  #   unless current_user.can_create_users?
  #     redirect_to root_path, alert: "You are not authorized to create users."
  #   end
  # end
  before_action :authenticate_user! # Require authentication for all actions
  load_and_authorize_resource # Use CanCanCan to load and authorize the resource

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "User was successfully created."
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
  end
end
