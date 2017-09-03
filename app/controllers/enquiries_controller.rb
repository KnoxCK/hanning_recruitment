class EnquiriesController < ApplicationController
  def create
    @enquiry = Enquiry.create(enquiry_params)
    EnquiryMailer.enquiry_recieved(@enquiry).deliver_now
    redirect_to contact_path
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :tel, :body)
  end
end
