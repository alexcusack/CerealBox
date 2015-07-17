class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
  end

  def show
    @video = Video.find(params[:id])
  end


  private

  def article_params
    params.require(:video).permit(:title, :link)
  end

end
