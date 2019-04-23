class MoviesController < ApplicationController
  def index
    @movies = if params[:term]

      Movie.where('title LIKE ?', "%#{params[:term]}%")
    else
      Movie.all
    end
  end
end
