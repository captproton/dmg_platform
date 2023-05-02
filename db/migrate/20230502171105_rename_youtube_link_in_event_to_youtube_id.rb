class RenameYoutubeLinkInEventToYoutubeId < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :youtube_link, :youtube_id    
  end
end
