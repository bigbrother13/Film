class Game < ApplicationRecord
  scope :with_title,   -> (title) 	{ where('title LIKE ?', "%#{title}%")}
  scope :with_category, -> (category) { where(category: category)}
  scope :with_platform, -> (platform) { where(platform: platform)}
  scope :with_score, -> (score) { where("score > ?", score)}
end
