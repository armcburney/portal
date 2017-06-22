#
# Main articles controller
#
class ArticlesController < ApplicationController
  def index
    @articles   = Article.all
    @featured   = Article.last
    @html_text  = ArticlesHelper.render_html!(@featured.text)
    @stylesheet = Settings.active_stylesheet
  end

  def show
    @article    = Article.friendly.find(params[:id])
    @html_text  = ArticlesHelper.render_html!(@article.text)
    @stylesheet = Settings.active_stylesheet
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article)
          .permit(:title, :author, :description, :text)
  end
end
