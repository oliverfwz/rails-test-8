require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#show' do
    let!(:user) { create :user }

    it "show a product" do
      get :show, id: user

      expect(assigns(:user).id).to eq user.id
    end
  end
end