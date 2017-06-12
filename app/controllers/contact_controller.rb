#
# Contact controller
#
class ContactController < ApplicationController
  def index() end

  def send_mail
    Rails.logger.info('Sending email.')
    ContactMailer.contact_email('test this email').deliver
    render :index, status: :ok
  end
end
