class HomeController < ApplicationController
  def index
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
