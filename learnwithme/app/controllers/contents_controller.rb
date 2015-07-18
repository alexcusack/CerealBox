class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    @course = Course.where(id: params[:course_id]).first
    @content = @course.contents.new(content_params)
    if @content.save
      @content.course = @course
      render partial: 'content'
    else
      render partial: 'content_errors',
        status: 400
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @course = Course.where(id: params[:course_id]).first
    @content = Content.where(id: params[:id]).first
    render partial: 'edit_content_form'
  end

  def update
    @course = Course.where(id: params[:course_id]).first
    @content = Content.where(id: params[:id]).first
    @content.assign_attributes(content_params)
    if @content.save
      render partial: 'content'
    else

    end
  end

  def destroy
    course = Course.where(id: params[:course_id]).first
    content = Content.where(id: params[:id])
    course.contents.delete(content)
    render nothing: true
  end

  private

  def content_params
    params.require(:content).permit(:category, :title, :description, :link)
  end

end
