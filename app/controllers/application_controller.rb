class ApplicationController < ActionController::Base
  
  include ActionController::HttpAuthentication::Token	
  respond_to :json

  protect_from_forgery with: :null_session

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  	
  def current_user
  	User.by_token(session[:token]).first if session.has_key? :token
    Professional.by_token(session[:token]).first if session.has_key? :token
  end
  
  def authenticate
    binding.pry
    unless authenticate_with_http_token { |token, options| 
      puts token
      User.find_by(token: token) }
    	render json: { error: 'Bad Token'}, status: 401
  	end
  end
  
end
