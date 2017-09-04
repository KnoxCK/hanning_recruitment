class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :job_application

  def job_application
    @job_application = JobApplication.new
  end
end
