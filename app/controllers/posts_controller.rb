class PostsController < ApplicationController
  def show
    @post = Post.find(post_id)
  end

  private

  def post_id
    params.require(:id)
  end
end