class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
  	UserNotifier.send_signup_email(user).deliver
  end

end