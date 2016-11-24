class UserMailer < ApplicationMailer

  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, 
         from: contact.email, 
         subject: "Website Contact")
  end

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end