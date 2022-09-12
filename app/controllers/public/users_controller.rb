class Public::UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @reviews = @user.reviews
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
    redirect_to public_users_my_page_path(@user)
    else
    render :edit
    end
  end

  def unsubscribe
    @user = User.find(current_user.id)
  end

  def withdraw
    @user = User.find(current_user.id)
    @user.update(is_deleted: true)
    sign_out_and_redirect(current_user)
  end

  def user_params
    params.require(:user).permit(:email, :name)
  end

end
