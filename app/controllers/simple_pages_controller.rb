class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(5)
    # byebug
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def about
  end

  def contact
  end

end
