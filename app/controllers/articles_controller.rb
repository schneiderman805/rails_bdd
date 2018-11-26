class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    #binding.pry
  
    @article = Article.new(article_params) 
    #this a hacky way, i should use srong parameters/santitized parameters
    #article = Article.new(title: params["article"]["title"],content: params["article"]["content"])
    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to @article
       
    else
      render "new" 
    end
  end

  def show
    @article = Article.find(params[:id])
  end
  privet
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
