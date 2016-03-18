class UsersController < ApplicationController
  def show
    @user = User.find(user_id)
    @comments = @user.comments.order(id: :desc)
  end

  private

  def user_id
    params.require(:id)
  end
end