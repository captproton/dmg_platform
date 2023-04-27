class Legal < ApplicationRecord
  # extend FriendlyId
  # friendly_id :title, use: :slugged

  validates :title, presence: true

  has_rich_text :content

  has_one_attached :cover_photo
end
