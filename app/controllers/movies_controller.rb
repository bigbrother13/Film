class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    if search_params[:title].present?
      @movies = @movies.where('title LIKE ?', "%#{search_params[:title]}%")
    end

    if search_params[:content].present?
      @movies = @movies.where('content LIKE ?', "%#{search_params[:content]}%")
    end

    if search_params[:quality] == '1'
      @movies = @movies.where(quality: true)
    else
      @movies = @movies.where(quality: false)
    end

    if search_params[:voice] == '1'
      @movies = @movies.where(voice: true)
    else
      @movies = @movies.where(voice: false)
    end
  end

  private

  def search_params
    params[:search] || {}
  end
end
