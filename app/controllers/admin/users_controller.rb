class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.page(params[:page]).per(20)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :is_deleted)
  end

end
