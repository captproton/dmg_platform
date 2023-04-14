class BlogArticlesController < ApplicationController
    def index
        @blog_articles = BlogArticle.all
    end

    def show
        @blog_article = BlogArticle.find(params[:id])
    end
end
