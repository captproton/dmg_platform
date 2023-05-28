class Navigation < ApplicationRecord
    # scopes
    scope :home,        -> { where("key = ?", "home").first }
    scope :main_links,  -> { where("key != ?", "home").order(:priority) }
#   scope :recent, -> { order(published_at: :desc) }

end
