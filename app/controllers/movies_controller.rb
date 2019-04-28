class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies = @movies.with_title(search_params[:title]) if search_params[:title].present?
    @movies = @movies.with_content(search_params[:content]) if search_params[:content].present?
    @movies = @movies.with_quality if search_params[:quality] == '1'
    @movies = @movies.with_voice if search_params[:voice] == '1'
  end

  private

  def search_params
    params[:search] || {}
  end
end

