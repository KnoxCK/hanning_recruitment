class EnquiriesController < ApplicationController
  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.enquiry_received(@enquiry).deliver_now
      redirect_to contact_path({message: "Your enquiry has been sent"})
    else
      binding.pry
      redirect_to contact_path({errors: @enquiry.errors})
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :tel, :body)
  end
end
