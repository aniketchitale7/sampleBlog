class Api::CommentsController < ApplicationController
  require 'json'
  def index

  end


  def show

    @article = Article.find(params[:id]).comments
    respond_to do |format|
      format.json { render :json => @article }
      format.html { render :json => newJasonArray }
    end

  end


end