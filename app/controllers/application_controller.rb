class ApplicationController < ActionController::Base
	
  respond_to :json

  # def actual_client
  #   User.find :client_id if session.has_key? :client_id && actual_client_type == User
  #   Professional.find session[:client_id] if session.has_key? :client_id && actual_client_type == Professional
  # end

  # def actual_client_type
  #   session[:user_type] if session.has_key? :user_type
  # end
  
end
