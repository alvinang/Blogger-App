class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])

    @comment = Comment.new          #Comment.new instead of @article.comments.new to avoid auto-assign article_id & generate new comment
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article '#{@article.title}' created!"

    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' updated!"

    redirect_to article_path(@article)
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "You deleted '#{@article.title}'. That article must suck!"

    redirect_to articles_path
  end
end
