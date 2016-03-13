class PostCommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @post_comment = PostComment.new(post_comment_params)

    if @post_comment.save
      @comment = @post_comment
    end
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:message, :user_id, :post_id)
  end
end