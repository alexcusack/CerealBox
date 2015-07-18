class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    course = Course.where(id: params[:course_id]).first
    image = Image.new(image_params)
    if image.save
      CourseImage.create(course_id: course.id, image_id: image.id)
      render 'content/_content',
        locals: { content: image, course: course },
        layout: false
    else
      render 'content/_content_errors',
        locals: { content: image },
        layout: false,
        status: 400
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    course = Course.where(id: params[:course_id]).first
    image = Image.where(id: params[:id]).first
    render 'content/_edit_content_form',
        locals: { content: image, course: course },
        layout: false
  end

  def update
    course = Course.where(id: params[:course_id]).first
    image = Image.where(id: params[:id]).first
    image.assign_attributes(image_params)
    if image.save
      render 'content/_content',
        locals: { content: image, course: course },
        layout: false
    else

    end
  end

  def destroy
    course = Course.where(id: params[:course_id]).first
    image = Image.where(id: params[:id])
    course.images.delete(image)
    render nothing: true
  end

  private

  def image_params
    params.require(:image).permit(:title, :link)
  end


end
