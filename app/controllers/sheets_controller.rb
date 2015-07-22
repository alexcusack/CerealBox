class SheetsController < ApplicationController
  before_action :set_sheet, only: [:show, :edit, :update, :destroy]

  # GET /sheets
  # GET /sheets.json
  def index
    @sheets = Sheet.all
  end

  # GET /sheets/1
  # GET /sheets/1.json



  # GET /sheets/new
  def new
    @sheet = Sheet.new
    @course = Course.find(params[:course_id]) if params[:course_id]
  end

  # GET /sheets/1/edit
  def edit
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = Sheet.new(sheet_params)

    @sheet.owner = current_user
    respond_to do |format|
      if @sheet.save
        CourseSheet.create!(course_id: params[:course_id], sheet_id: @sheet.id) if params[:course_id] != ""
        format.html { redirect_to @sheet, notice: 'Sheet was successfully created.' }
        format.json { render :show, status: :created, location: @sheet }
      else
        format.html { render :new }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def fetch
    scraper = Scraper::Client.new
    content = scraper.scrape(params[:url])
    if content['error'] || content['excerpt'] == ""
      render plain: "Preview not currently available."
    else
      render html: scraper.scrape(params[:url])['excerpt'].html_safe
    end
  end

  # PATCH/PUT /sheets/1
  # PATCH/PUT /sheets/1.json
  def update
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to @sheet, notice: 'Sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet }
      else
        format.html { render :edit }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet.destroy
    respond_to do |format|
      format.html { redirect_to sheets_url, notice: 'Sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def scrape
    @sheet = Sheet.last
    render :scrape_test
  end

  # these are grouped together for the purpose of
  # adding a sheet to a course
  def current_user_courses
    @sheet = Sheet.find(params[:sheet_id])
    courses = current_user.owned_courses
    @appropriate_courses = Course.courses_without_sheet(courses, @sheet)
    render partial: 'list_add_sheet_to_current_user_course'
  end

  def add_sheet_to_current_user_course
    course = Course.find(params[:course_id])
    course.sheets << Sheet.find(params[:sheet_id])
    render plain: "Sheet added!"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_params
      params.require(:sheet).permit(:user_id, :article, :image, :video, :map, :title, :description)
    end
end
