class EnquiryMailer < ApplicationMailer
  def enquiry_received(enquiry)
    @enquiry = enquiry

    mail(to: "info@hanningrecruitment.com",
          subject: "You have received an enquiry")
  end
end
