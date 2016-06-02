class Api::ArticlesController < ApplicationController
  require 'json'
  def index

  end


  def show
    newJasonArray = []
    articles = Article.all.order(created_at: :desc).each do |a|
      newJasonArray.push({
                                    id: a.id,
                                    title: a.title,
                                    text: a.text,
                                    created_at: a.created_at,
                                    updated_at: a.updated_at,
                                    comments: a.comment_ids
                                })
    end


    respond_to do |format|
      format.json { render :json => newJasonArray }
    end

  end


end