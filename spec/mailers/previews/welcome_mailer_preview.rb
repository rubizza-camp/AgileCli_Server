# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    WelcomeMailer.sample_email(User.first)
  end
end
