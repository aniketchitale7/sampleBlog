class Admin::CommentsController < ApplicationController


def index

end


def show



  @article = Article.find(params[:id]).comments.paginate(:page => params[:page], :per_page => 10)


end

  def destroy

    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

end
