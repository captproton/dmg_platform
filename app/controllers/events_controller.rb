class EventsController < ApplicationController
    def index
      @lead = Lead.new
      @blog_articles    = BlogArticle.published
      @upcoming_events  = Event.upcoming_events
      mimimum_length_of_unique_youtube_id = 3
      @past_events      = Event.with_long_unique_youtube_id(mimimum_length_of_unique_youtube_id)

    end
  end
  