class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      UserMailer.contact_email(@contact).deliver_now
      flash[:success] = "Your message has been sent!"
      redirect_to root_path
    else
      render :new
    end
  end

  private 

    def secure_params
      params.require(:contact).permit(:name, :email, :message)
    end
end