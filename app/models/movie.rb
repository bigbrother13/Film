class Movie < ApplicationRecord
  scope :with_title,   -> (title) 	{ where('title LIKE ?', "%#{title}%")}
  scope :with_content, -> (content) { where('content LIKE ?', "%#{content}%")}

  scope :with_quality, -> { where(quality: true) }
  scope :with_voice,   -> { where(voice: true) }

  scope :with_category, ->(category) { where(category: category) }
end
