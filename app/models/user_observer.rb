class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
  	UserNotifier.send_signup_email(user).deliver_later
  	AdminNotifier.send_user_signup_email(user).deliver_later
  end

end