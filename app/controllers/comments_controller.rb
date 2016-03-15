class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      @result = @comment
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :user_id, :post_id)
  end
end