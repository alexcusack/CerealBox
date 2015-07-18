class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    course = Course.where(id: params[:course_id]).first
    article = Article.where(id: params[:id]).first
    render 'content/_edit_content_form',
        locals: { content: article, course: course },
        layout: false
        # layout: false
  end

  def create
    # this will need to be find or create by (?)
    course = Course.where(id: params[:course_id]).first
    article = course.articles.new(article_params)
    if article.save
      render 'content/_content',
        locals: { content: article, course: course },
        layout: false
    else

    end
  end

  def show
    @article = Article.find(params[:id])
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
