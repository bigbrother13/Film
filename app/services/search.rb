class Search
  def initialize(params)
    @title = params[:title]
    @content = params[:content]
    @quality = params[:quality]
    @sound = params[:sound]
  end

  def perform
    @movies = Movie.all
    @movies = @movies.with_title(@title) if @title.present?
    @movies = @movies.with_content(@content) if @content.present?
    @movies = @movies.with_quality if @quality == '1'
    @movies = @movies.with_voice if @sound == '1'
    @movies
  end
end
