class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    image = Image.new(image_params)
    render 'content/_content',
      locals: { content: image },
      layout: false
  end

  def show
    @image = Image.find(params[:id])
  end


  private

  def image_params
    params.require(:image).permit(:title, :link)
  end


end
