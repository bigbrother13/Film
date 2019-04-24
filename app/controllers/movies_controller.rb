class MoviesController < ApplicationController
  def index
    @movies = if params[:term]

      Movie.where('title or content LIKE ?', "%#{params[:term]}%")
    else
      Movie.all
    end
  end
end
