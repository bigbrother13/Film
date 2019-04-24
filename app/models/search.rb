class Search < ApplicationRecord

  def search_movies

    movies Movie.all

    movie = movies.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
    movie = movies.where(["category LIKE ?", "%#{category}%"]) if category.present? 
    movie = movies.where(["age LIKE ?", "%#{age}%"]) if age.present? 

    returne movies
  end
end
