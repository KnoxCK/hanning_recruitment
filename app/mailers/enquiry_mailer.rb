class EnquiryMailer < ApplicationMailer
  def enquiry_received(enquiry)
    @enquiry = enquiry

    mail(to: "hanning@hanning.com",
          subject: "You have received an enquiry")
  end
end
