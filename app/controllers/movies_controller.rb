class MoviesController < ApplicationController
  def index
    @movies = Search.new(options: search_params, model_name: Movie).perform
  end

  private

  def search_params
    params[:search] || {}
  end
end
