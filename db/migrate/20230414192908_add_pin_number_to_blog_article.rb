class AddPinNumberToBlogArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_articles, :pin_number, :integer, default: 0, null: false
  end
end
