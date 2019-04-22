class Movie < ApplicationRecord
  def self.search_by(search_term)
    where("LOWER(title) LIKE :search_term")
  end
end
