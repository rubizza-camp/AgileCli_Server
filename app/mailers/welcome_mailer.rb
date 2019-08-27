class WelcomeMailer < ApplicationMailer
  default from: "example@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Registration')
  end
end
