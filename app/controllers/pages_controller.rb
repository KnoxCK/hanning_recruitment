class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :what_we_do, :about_us, :live_roles, :news, :news_article, :news_article_two, :contact]
  before_action :instagram_call, only: :news
  def home
  end

  def what_we_do
  end

  def about_us
  end

  def live_roles
    @live_roles = LiveRole.all.order(:created_at).reverse
    @commercial_roles = LiveRole.where(category_id: [1, 3]).order(:created_at).reverse
    @residential_roles = LiveRole.where(category_id: [2, 3]).order(:created_at).reverse
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

  private

  def instagram_call
    url = "https://api.instagram.com/v1/users/self/media/recent/?access_token=5855364746.49cacea.fa77e9e21f3b4d88b0e7347358e797e0"
    # media = JSON.parse(open(url).read)["data"]
    # @image_urls = []
    # media.first(10).each do |media|
      # @image_urls << media["link"]
    end
  # end

end
