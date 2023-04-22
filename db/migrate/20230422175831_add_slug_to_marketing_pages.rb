class AddSlugToMarketingPages < ActiveRecord::Migration[7.0]
  def change
    add_column :marketing_pages, :slug, :string
    add_index :marketing_pages, :slug, unique: true
  end
end
