class BlogArticle < ApplicationRecord
  validates :title, presence: true

  # scopes
  scope :pinned, -> { where("pin_number > ? AND published_at <= ?", 0, Time.current) }
  scope :published, -> { where("published_at <= ?", Time.current) }
  scope :recent, -> { order(published_at: :desc) }

  # friendly_id gem
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  # acts_as_taggable_on :tags
  acts_as_taggable_on :tags
  # acts_as_taggable_on :skills, :interests, :categories #You can also configure multiple tag types per model

  WORDS_PER_MINUTE = 150
  # belongs_to    :user

  has_rich_text :content
  has_one_attached :cover_photo
  

  def reading_time
    # https://alexanderpaterson.com/posts/showing-estimated-reading-time-on-a-rails-blog-post
    text =  self.content.to_plain_text
    result = (text.scan(/\w+/).length / WORDS_PER_MINUTE).to_i ||= 1
  end

  def excerpt
    self.content.to_plain_text.truncate(90)
  end

  def publication_date
    self.published_at.strftime("%B %d, %Y")
  end

  def pinned?
    pin_number > 0
  end

end
