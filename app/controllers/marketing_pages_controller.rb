class MarketingPagesController < ApplicationController
  def show
    @page = MarketingPage.friendly.find(params[:id])
  end
end