class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @tailor = Post.find(params[:tailor_id])
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.tailor = @comment
    if @comment.save
      redirect_to tailor_path(@tailor)
    else
      render 'new'
    end
  end
end
