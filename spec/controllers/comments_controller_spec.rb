require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe '#create' do
    let!(:user) { create :user }

    let(:params) { attributes_for(:comment, user_id: user.id) }
    before  { sign_in user }

    context 'Post' do
      let!(:post) { create :post }

      it "save a post_comment" do
        coment = post.comments.build(params)
        expect{ coment.save }.to change(Comment, :count).by(1)
      end
    end

    context 'User' do
      let!(:oliver) { create :user }

      it "save a user_comment" do
        coment = oliver.comments.build(params)
        expect{ coment.save }.to change(Comment, :count).by(1)
      end
    end
  end
end