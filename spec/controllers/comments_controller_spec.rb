require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe '#create' do
    let!(:post) { create :post }
    let!(:user) { create :user }

    def do_request
      post :create, comment: params, format: :js
    end

    let(:params) { attributes_for(:comment, user_id: user.id, post_id: post.id) }
    before  { sign_in user }

    it "save a comment" do
      p params
      expect{ do_request }.to change(Comment, :count).by(1)
    end
  end
end