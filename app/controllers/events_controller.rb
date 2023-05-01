class EventsController < ApplicationController
    def index
      @blog_articles = BlogArticle.published
      @upcoming_events = Event.upcoming_events
      @events = Event.all

    end
  end
  