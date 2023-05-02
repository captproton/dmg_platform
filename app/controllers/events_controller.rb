class EventsController < ApplicationController
    def index
      @blog_articles = BlogArticle.published
      @upcoming_events = Event.upcoming_events
      @past_events = Event.past_events

    end
  end
  