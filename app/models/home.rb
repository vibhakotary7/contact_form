class Home < ApplicationRecord
	validates :first_name,presence: true
	validates :email,presence: true
	validates :message,presence: true
  # attribute :first_name,      :validate => true
  # attribute :last_name         :validate => true
  # attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  # attribute :message
  # attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "your_email@your_domain.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
