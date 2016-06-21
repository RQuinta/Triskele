class Api::UsersController < ApplicationController

  before_action :set_user , only:[:update, :show, :destroy]

  def create
    @user = User.create user_params
    respond_with :api, @user
  end

  def show
    if @user
      render :json => @user.to_json(:except => [:password_digest, :token], :include => [:professional])
    else
      render json: { error: 'User does not exist' }, status: 404      
    end
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
    params.require(:user).permit(:name, :email, :password, :phone, :image, :about, :background_image)
  end

  def set_user
    @user = User.find params[:id]
  end

end