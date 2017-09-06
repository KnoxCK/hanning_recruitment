class RegistrationsMailer < ApplicationMailer
  def registration(registration)
    @registration = registration
    mail(to: "info@hanningrecruitment.com",
          subject: "Someone has registered on your site")
  end
end
