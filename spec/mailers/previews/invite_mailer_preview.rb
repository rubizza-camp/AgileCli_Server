# Preview all emails at http://localhost:3000/rails/mailers/invite_mailer
class InviteMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    InviteMailer.sample_email(User.first)
  end
end
