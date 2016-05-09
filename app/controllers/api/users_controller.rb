class Api::UsersController < ApplicationController

  before_action :set_user , only:[:update, :destroy]

  def create
    @user = User.create user_params
    respond_with :api, @user
  end

  def show
    respond_with :api, @user
  end

  def update
    @user.update user_params
    respond_with :api, @user
  end

  def destroy
    @user.destroy
    respond_with :api, @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find params[:id]
  end

end