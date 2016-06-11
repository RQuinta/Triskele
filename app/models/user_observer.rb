class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
  	UserNotifier.send_signup_email(user).deliver
  	AdminNotifier.send_user_signup_email(user).deliver
  end

end