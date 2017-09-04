class JobApplicationMailer < ApplicationMailer
  def job_application(job_application)
    @job_application = job_application

    mail(to: "info@hanningrecruitment.com",
          subject: "You have received an application")
  end
end
