class Api::SessionsController < ApplicationController

  def create
    binding.pry
    user = User.find_by(email: session_params[:email])
    if user
      if session_params[:social_login]
        render json: { token: user.token, type: "USER" }, status: 200
      elsif user.authenticate(session_params[:password]
        render json: { token: user.token, type: "USER" }, status: 200
    else
      professional = professional.find_by(email: session_params[:email])
      if professional
        if session_params[:social_login]
          render json: { token: professional.token, type: "PROFESSIONAL" }, status: 200
        elsif professional.authenticate(session_params[:password]
          render json: { token: professional.token, type: "PROFESSIONAL" }, status: 200
    end
    render json: { error: 'Incorrect credentials' }, status: 401
  end

   def session_params
    params.require(:session).permit([:email, :password, :social_login])
  end

end