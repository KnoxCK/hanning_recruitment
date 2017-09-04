class JobApplicationsController < ApplicationController
  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.live_role_id = params[:role_id]
    if @job_application.save
      redirect_to root_path
    end
  end

  private

  def job_application_params
    params.require(:job_application).permit(:name, :email, :phone, :cv)
  end
end
