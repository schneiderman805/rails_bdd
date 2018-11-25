class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    #binding.pry
  
    #creat a new article in the datatbase, using the data from the form 
    #this a hacky way, i should use srong parameters/santitized parameters
    article = Article.new(title: params["article"]["title"],content: params["article"]["content"])
    if article.save
      render new_article_path
      flash[:success] = 'Article was successfully created.'
      
    else
      flash[:error] = 'Error' 
    end
  end

  def show
    @article = Article.find(params[:id])
  end

end
