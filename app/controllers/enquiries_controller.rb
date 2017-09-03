class EnquiriesController < ApplicationController
  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.enquiry_received(@enquiry).deliver_now
      redirect_to contact_path({message: "Your enquiry has been sent"})
    else
      redirect_to contact_path({message: "You must provide an email address and a message"})
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :tel, :body)
  end
end
