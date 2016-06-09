class UserNotifier < ActionMailer::Base
  default :from => 'support@schoolion.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'この度はご登録いただきありがとうございます！' )
  end
end