class HomeController < ApplicationController
  def index
    @intro_article = MarketingPage.tagged_with(["home"], :match_all => true).first
    @positioning_articles = MarketingPage
      .tagged_with(["home", "more-info"], :match_any => true)
      .tagged_with(["more-info"], :match_any => true)
    @pinned_articles = BlogArticle.pinned
  end

  def terms
    @page = Legal.find_by(title: "Terms of Use")
  end

  def privacy
    @page = Legal.find_by(title: "Privacy Policy")
  end

  def contact_us
  end

  def about_us
  end

  def content
  end
  
  def press
  end

  def social_highlights
  end

  def slider
    # @slider = Slider.find(params[:id])
    # render :layout => false
  end
end
