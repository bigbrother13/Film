class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    # @movies = Movie.actual
  end

  def show
  end

  private

  def find_params
    @movie = Movie.find(params[:id])
  end
end



