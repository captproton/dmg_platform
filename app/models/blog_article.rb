class BlogArticle < ApplicationRecord
  validates :title, presence: true
  # extend FriendlyId
  # friendly_id :title, use: :slugged
  
  WORDS_PER_MINUTE = 150
  # belongs_to    :user
  has_rich_text :content

  has_one_attached :cover_photo
  
  ##########################
  # => Methods
  ##########################
  def reading_time
    # https://alexanderpaterson.com/posts/showing-estimated-reading-time-on-a-rails-blog-post
    text =  self.body.to_plain_text
    result = (text.scan(/\w+/).length / WORDS_PER_MINUTE).to_i ||= 1
  end  
end
