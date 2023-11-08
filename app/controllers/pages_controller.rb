class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :our_team, :terms_of_use ]
  def home
    @contact = Contact.new
  end

  def our_team
  end

  def terms_of_use
  end
end
