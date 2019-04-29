class MoviesController < ApplicationController
  def index
    @movies = Search.new(params).perform
  end

  private

  def search_params
    params[:search] || {}
  end
end

