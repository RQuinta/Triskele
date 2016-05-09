class ApplicationController < ActionController::Base
  
  include ActionController::HttpAuthentication::Token	
  respond_to :json

  protect_from_forgery with: :null_session

  def authenticate
    unless authenticate_with_http_token { |token, options| User.find_by(token: token) }
    	render json: { error: 'Bad Token'}, status: 401
  	end
  end
  
end
