class MarketingPage < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    has_one_attached :cover_photo
    has_rich_text :content

    acts_as_taggable_on :tags

  end