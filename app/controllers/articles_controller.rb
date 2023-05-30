class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  def new
    @article = Article.new
  end

  def create
    # Create new article with strong params (control what user can edit/submit to db. Here it's everything)
    @article = Article.new(article_params)
    @article.save
    # Got to show page for individual article created
    redirect_to article_path(@article)
  end

  def edit
    set_article
  end

  def update
    set_article
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    set_article
    @article.destroy
    redirect_to articles_path, notice: 'article successfully deleted.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
