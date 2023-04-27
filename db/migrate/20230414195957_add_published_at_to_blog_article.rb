class AddPublishedAtToBlogArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_articles, :published_at, :datetime
  end
end
