class RemoveUserRefFromBlogArticle < ActiveRecord::Migration[7.0]
  def change
    remove_reference :blog_articles, :user, null: false, foreign_key: true
  end
end
