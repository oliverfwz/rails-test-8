require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end
end