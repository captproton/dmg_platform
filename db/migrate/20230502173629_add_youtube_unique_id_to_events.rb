class AddYoutubeUniqueIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :youtube_unique_id, :text
  end
end
