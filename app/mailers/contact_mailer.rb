#
# contact_mailer.rb
#
class ContactMailer < ApplicationMailer
  default from: 'andrewrobertmcburney@gmail.com'

  def contact_email(message)
    @message = message

    mail(
      to: 'andrewrobertmcburney@gmail.com',
      subject: 'Contact form email'
    )
  end
end
