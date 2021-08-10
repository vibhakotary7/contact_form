class ContactMailer < ApplicationMailer
	default from: 'sample010100@gmail.com'

  def contact_email(contact)
    @contact = contact
    @url  = contact.email
    mail(to: @url, subject: 'Welcome to Application')
  end
end
