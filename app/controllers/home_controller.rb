class HomeController < ApplicationController
  # before_action :verify_recaptcha, only: [:create]

  def index
    @contact = Home.new(params[:home])
  end

  def new
    @contact = Home.new   
  end

  def create
    params.permit!
    @contact = Home.new(params[:home])
    # @contact.request = request
    respond_to do |format|
      if verify_recaptcha(model: @contact) && @contact.save! && params[:home].present?
        ContactMailer.contact_email(@contact).deliver_later 
        format.html { redirect_to home_index_path,notice: "Contact sent successfully"}
        flash.now[:success] = "Thank you for your message. I'll get back to you soon!" 
      else
        format.html { redirect_to home_index_path,notice: "Message did not send" }
    end
  end
end

  private

  def home_params
    params.require(:home).permit(:first_name, :last_name,:email, :message)
  end
end


