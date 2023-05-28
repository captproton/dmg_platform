class AddSvgIconToNavigation < ActiveRecord::Migration[7.0]
  def change
    add_column :navigations, :svg_icon, :text
  end
end
