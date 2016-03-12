require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe '#show' do
    let!(:post) { create :post }

    it "show a product" do
      get :show, id: post

      expect(assigns(:post).id).to eq post.id
    end
  end
end