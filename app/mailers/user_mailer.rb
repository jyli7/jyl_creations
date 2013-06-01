class UserMailer < ActionMailer::Base
  default :from => "messenger@iamjimmyli.com"
  def inquiry_filed(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(:to => "jyl702@gmail.com", :subject => "Project Inquiry")
  end
end