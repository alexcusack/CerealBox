class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # this will need to be find or create by (?)
    course = Course.where(id: params[:course_id]).first
    article = Article.new(article_params)
    if article.save
      CourseArticle.create(course_id: course.id, article_id: article.id)
      render 'content/_content',
        locals: { content: article, course: course },
        layout: false
    else

    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    course = Course.where(id: params[:course_id]).first
    article = Article.where(id: params[:id]).first
    render 'content/_edit_content_form',
        locals: { content: article, course: course },
        layout: false
        # layout: false
  end

  def update
    course = Course.where(id: params[:course_id]).first
    article = Article.where(id: params[:id]).first
    article.assign_attributes(article_params)
    if article.save
      render 'content/_content',
        locals: { content: article, course: course },
        layout: false
    else

    end
    # ArticlesHelper.say_hi
  end

  def destroy
    p params
    render plain: "Good."
  end

  private

  def article_params
    params.require(:article).permit(:title, :link)
  end

end
