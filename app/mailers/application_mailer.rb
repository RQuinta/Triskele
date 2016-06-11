class ApplicationMailer < ActionMailer::Base
  
  default from: "\"Triskele\" <meajuda@triskele.me>"
  layout 'mailer'
  @base_url = "http://development.triskele.me:3000/"
  
end
