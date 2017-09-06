class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_registration

  def set_registration
    @registration = Registration.new
  end
end
