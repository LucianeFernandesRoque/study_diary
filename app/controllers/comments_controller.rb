class CommentsController < ApplicationController
  def create
    @study_item = StudyItem.find(params[:study_item_id])
    @comment = @study_item.comments.create(comment_params)
    redirect_to study_item_path(@study_item)
  end

  def destroy
    @study_item = StudyItem.find(params[:study_item_id])
    @comment = @study_item.comments.find(params[:id])
    @comment.destroy
    redirect_to study_item_path(@study_item)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end

