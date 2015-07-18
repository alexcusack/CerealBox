class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new
    video = Video.new(video_params)
    render 'content/_content',
      locals: { content: video },
      layout: false
  end

  def create
    video = Video.new()
    render 'content/_content',
      locals: { content: article },
      layout: false
  end

  def show
    @video = Video.find(params[:id])
  end


  private

  def video_params
    params.require(:video).permit(:title, :link)
  end

end
