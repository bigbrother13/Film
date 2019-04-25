class MoviesController < ApplicationController
  def index
    @movies = if search_params[:content]
      Movie.where('title or content LIKE ?', "%#{search_params[:content]}%")
    else
      Movie.all
    end
  end

  private

  def search_params
    params[:search] || {}
  end
end
