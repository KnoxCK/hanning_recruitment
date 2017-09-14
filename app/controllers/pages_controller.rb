class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :what_we_do, :about_us, :live_roles, :news, :news_article, :news_article_two, :contact]

  def home
  end

  def what_we_do
  end

  def about_us
  end

  def live_roles
    @live_roles = LiveRole.all.order(:created_at).reverse
    @commercial_roles = LiveRole.where(category_id: 1)
    @residential_roles = LiveRole.where(category_id: 2)
    @job_application = JobApplication.new
  end

  def news
    @news = News.all.order(:created_at).reverse
  end

  def news_article
    @news = News.find(params[:news].to_i)
  end

  def contact
    @enquiry = Enquiry.new
    @message = params[:message]
  end
end
