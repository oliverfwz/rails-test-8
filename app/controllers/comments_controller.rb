class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)

    if @comment.save
      @result = @comment
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :user_id)
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end