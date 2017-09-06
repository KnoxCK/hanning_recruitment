class JobApplicationsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    # binding.pry
    @job_application = JobApplication.new(job_application_params)
    @job_application.live_role_id = params[:role_id]
    if @job_application.save
      flash[:notice] = "Thank you, your application has been sent. We will be in touch"
      JobApplicationMailer.job_application(@job_application).deliver_now
      redirect_to live_roles_path
    else
      flash[:alert] = "You must upload a CV"
      redirect_to :back
    end
  end

  private

  def job_application_params
    params.require(:job_application).permit(:name, :email, :phone, :cv)
  end
end
