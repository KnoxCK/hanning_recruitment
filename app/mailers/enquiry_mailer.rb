class EnquiryMailer < ApplicationMailer
  def enquiry_received(enquiry)
    @enquiry = enquiry

    mail(to: "govinder.marwaha@gmail.com",
          subject: "You have received an enquiry")
  end
end
