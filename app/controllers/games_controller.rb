class GamesController < ApplicationController
  def index
  	@games = Search.new(options: search_params, model_name: Game).perform
  end

  private

  def search_params
    params[:search] || {}
  end
end
