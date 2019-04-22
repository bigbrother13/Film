class MoviesController < ApplicationController
  def index
    if params[:search]
      @search_term = params[:search]
      @movies = @movies.search(@search_term)
    else
      @movies= Movie.order('update_at DESC')
    end
  end
end
