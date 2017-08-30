class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @portfolio = Portfolio.limit(4).order("created_at DESC")
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
