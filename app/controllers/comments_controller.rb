class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @tailor = Tailor.find(params[:tailor_id])
    @comment = @tailor.comments.create(params[:comment].permit(:body))

    redirect_to tailor_path(@tailor)
  end

  def destroy
    @tailor = Tailor.find(params[:tailor_id])
    @comment = @tailor.comments.find(params[:id])
    @comment.destroy

    redirect_to tailor_path(@tailor)
  end
end
