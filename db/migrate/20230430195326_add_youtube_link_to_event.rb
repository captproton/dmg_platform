class AddYoutubeLinkToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :youtube_link, :string
  end
end
