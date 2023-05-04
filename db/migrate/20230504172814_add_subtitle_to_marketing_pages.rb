class AddSubtitleToMarketingPages < ActiveRecord::Migration[7.0]
  def change
    add_column :marketing_pages, :subtitle, :string
  end
end
