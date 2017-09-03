class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :what_we_do, :about_us, :live_roles, :news, :contact]

  def home
  end

  def what_we_do
  end

  def about_us
  end

  def live_roles
    @live_roles = LiveRole.all
  end

  def news
  end

  def contact
    @enquiry = Enquiry.new
    @message = params[:message]
  end
end
