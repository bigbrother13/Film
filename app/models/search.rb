class Search < ApplicationRecord

  def search_movies
    movies = Movie.all

    movies = movies.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
    movies = movies.where(["content LIKE ?", "%#{content}%"]) if content.present? 
    movies = movies.where(["category LIKE ?", "%#{category}%"]) if category.present? 
    movies = movies.where(["age LIKE ?", "%#{age}%"]) if age.present? 
    movies = movies.where(["quality LIKE ?", "%#{quality}%"]) if quality.present? 
    movies = movies.where(["voice LIKE ?", "%#{voice}%"]) if voice.present? 

    return movies
  end
end

