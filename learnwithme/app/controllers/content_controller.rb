class ContentController < ApplicationController
  def index
    @content = Content.all
  end

  def new
    @content = Content.new
  end

  def create
    course = Course.where(id: params[:course_id]).first
    content = course.content.new(content_params)
    if content.save
      render 'content/_content',
        locals: { content: content, course: course },
        layout: false
    else
      render 'content/_content_errors',
        locals: { content: content },
        layout: false,
        status: 400
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    course = Course.where(id: params[:course_id]).first
    content = Content.where(id: params[:id]).first
    render 'content/_edit_content_form',
        locals: { content: content, course: course },
        layout: false
  end

  def update
    course = Course.where(id: params[:course_id]).first
    content = Content.where(id: params[:id]).first
    content.assign_attributes(content_params)
    if content.save
      render 'content/_content',
        locals: { content: content, course: course },
        layout: false
    else

    end
  end

  def destroy
    course = Course.where(id: params[:course_id]).first
    content = content.where(id: params[:id])
    course.content.delete(content)
    render nothing: true
  end

  private

  def content_params
    params.require(:content).permit(:title, :link)
  end

end
