require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'associations' do
    it { is_expected.to have_many :comments }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end
end