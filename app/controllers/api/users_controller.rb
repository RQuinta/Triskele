class Api::UsersController < ApplicationController

  before_action :set_user_by_id, only:[:update, :show]
  before_action :set_user_by_email, only:[:forget_password]
  before_action :set_user_by_token, only:[:show_by_token]

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

  def show_by_token
    if @user
      render :json => @user.to_json(:except => [:password_digest, :token], :include => [:professional])
    else
      render json: { error: 'User does not exist' }, status: 404      
    end
  end

  def forget_password
    if @user
      UserNotifier.send_forgot_password_email(@user).deliver_later
      render json: {}, status: 200     
    else
      render json: { errors: { email: 'email not found' } }, status: 404      
    end  
  end

  def update
    @user.update user_params
    respond_with :api, @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :phone, :image, :about, :background_image)
  end

  def set_user_by_id
    @user = User.find params[:id]
  end

  def set_user_by_email
    @user = User.find_by(email: params[:email])
  end

  def set_user_by_token
    @user = User.find_by(token: params[:token])
  end

end