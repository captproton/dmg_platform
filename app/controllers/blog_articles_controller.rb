class BlogArticlesController < ApplicationController
    def index
        @blog_articles = BlogArticle.published
    end

    def show
        @blog_article = BlogArticle.published.find(params[:id])
    end
    
end
