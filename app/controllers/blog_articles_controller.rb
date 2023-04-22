class BlogArticlesController < ApplicationController
    def index
        @blog_articles = BlogArticle.published
        @pinned_articles = BlogArticle.pinned.first(4)
    end

    def show
        # @blog_article = BlogArticle.published.find(params[:id])
        @blog_article = BlogArticle.published.friendly.find(params[:id])
    end
    
end
