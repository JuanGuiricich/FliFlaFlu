class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :new, :sent]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
    redirect_to action: :sent
    else
        flash.now[:error] = 'Could not send message'
        render :new, status: :unprocessable_entity
    end
  end

  def sent

  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
