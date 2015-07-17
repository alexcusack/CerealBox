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
    article = course.articles.new(article_params)
    render 'content/_content',
      locals: { content: article, course: course },
      layout: false
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
