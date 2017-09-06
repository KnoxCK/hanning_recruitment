class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      flash[:notice] = "Thank you for registering with us. We will be in touch"
      # JobApplicationMailer.registration(@registration).deliver_now
      redirect_to root_path
    else
      flash[:alert] = "You must upload a CV"
      redirect_to :back
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :email, :phone, :cv)
  end
end
