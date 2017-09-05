class JobApplicationMailer < ApplicationMailer
  def job_application(job_application)
    @job_application = job_application
    mail(to: "govinder.marwaha@gmail.com",
          subject: "You have received an application")
  end
end
