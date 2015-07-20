class CoursesController < ApplicationController
  def index
    if current_user
      @user = User.find(current_user.id)
    end
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
      @course.members << current_user
      redirect_to edit_course_path(@course)
    else
      @errors = @course.errors.messages
      render 'new'
    end
  end

  def data
    # @courses = Course.all
    # @sheet_count = []
    @course = Course.find(params[:course_id])
    @sheet_count = @course.sheets.count
    # @courses.each{|course| @sheet_count << course.sheets.count}
    respond_to do |format|
      format.json  {render json: sheet_count}
    end
  end


  def show
    @course = Course.find(params[:id])
    @users = @course.members

    @sheets = @course.sheets
  end


  def edit
    @course= Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes(course_params)
    @course.published = true if params[:published] == "true"
    @course.published = false if params[:published] == "false"
    if @course.save
      redirect_to course_path(@course)
    else
      render 'edit'
    end
  end




  private

  def course_params
    params.require(:course).permit(:title, :description, :location, :published)
  end

end
