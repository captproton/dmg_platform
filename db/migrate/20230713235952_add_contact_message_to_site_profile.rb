class AddContactMessageToSiteProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :site_profiles, :contact_message, :text
  end
end
