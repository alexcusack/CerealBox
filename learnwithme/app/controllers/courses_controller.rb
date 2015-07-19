class CoursesController < ApplicationController
  def index
    if current_user
      @user = User.find(current_user.id)
    end
    @courses = Course.all
    @sheets = Sheet.all

    @objects = [Course.all, Sheet.all].flatten.shuffle!
  end

  def new
    if current_user
      @course = Course.new
    else
      redirect_to '/users'
    end
  end

  def create
    @course = Course.new(course_params)
    @course.owner = current_user
    if @course.save
      redirect_to edit_course_path(@course)
    else
      @errors = @course.errors.messages
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
    @users = @course.members
  end


  def edit
    @course= Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      render 'edit'
    end
  end




  private

  def course_params
    params.require(:course).permit(:title, :description, :location)
  end

end
