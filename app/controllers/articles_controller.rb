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
    #show the page for that specific atricle that i just created
    if article.save
      #render the article
    else
       #display a message and display the form again 
    end
  end

end
