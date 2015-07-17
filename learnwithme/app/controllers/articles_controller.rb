class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    render 'content/_content',
      locals: { content: article },
      layout: false
  end

  def show
    @article = Article.find(params[:id])
  end


  private

  def article_params
    params.require(:article).permit(:title, :link)
  end

end
