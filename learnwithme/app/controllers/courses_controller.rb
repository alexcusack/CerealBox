class CoursesController < ApplicationController
  def index
    if current_user
      @user = User.find(current_user.id)
    end
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    test_user = User.find(2)
    @course = Course.new(course_params)
    @course.owner = test_user
    if @course.save
      redirect_to edit_course_path(@course)
    else
      @errors = @course.errors.messages
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end


  def edit
    @course= Course.find(params[:id])
  end



  private

  def course_params
    params.require(:course).permit(:title, :description, :location)
  end

end
