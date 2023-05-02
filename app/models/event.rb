class Event < ApplicationRecord
    validates :title, presence: true

    # scopes
    scope :upcoming_events, -> { where("happening_on >= ?", Time.current) }
    # scope :past_events, -> { where("happening_on < ?", Time.current) }
    scope :past_events, -> { where("happening_on < ?", Time.current) }
    scope :upcoming_and_published, -> { where('happening_on >= ? AND youtube_unique_id = ?', Time.zone.now, true) }
    scope :with_long_unique_youtube_id, ->(length) { where("youtube_unique_id IS NOT NULL AND LENGTH(youtube_unique_id) >= ?", length) }
    
    def happening_on_date
        self.happening_on.strftime("%e.%d.%y")
      end
    
end
