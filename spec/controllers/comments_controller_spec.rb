require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe '#create' do
    let!(:post) { create :post }
    let!(:user) { create :user }

    let(:params) { attributes_for(:comment, user_id: user.id) }
    before  { sign_in user }

    it "save a comment" do
      coment = post.comments.build(params)
      expect{ coment.save }.to change(Comment, :count).by(1)
    end
  end
end