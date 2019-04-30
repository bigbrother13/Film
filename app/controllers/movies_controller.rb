class MoviesController < ApplicationController
  def index
    @movies = Search.new(options: search_params).perform
  end

  private

  def search_params
    params[:search] || {}
  end
end
