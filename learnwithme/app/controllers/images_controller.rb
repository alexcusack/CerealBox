class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to course_image_path
    else
      @errors = @course.errors.messages
      render 'new'
    end
  end

  def show
    @image = Image.find(params[:id])
  end


  private

  def image_params
    params.require(:image).permit(:title, :link)
  end


end
