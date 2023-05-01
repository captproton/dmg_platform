class Event < ApplicationRecord
    validates :title, presence: true

    # scopes
    scope :upcoming_events, -> { where("happening_on >= ?", Time.current) }
    scope :past_events, -> { where("happening_on < ?", Time.current) }
  
    def happening_on_date
        self.happening_on.strftime("%e.%d.%y")
      end
    
end
