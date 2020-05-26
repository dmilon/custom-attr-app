require 'rails_helper'

RSpec.describe UserAttributeValue, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:value) }
  end
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:user_attribute) }
  end
end
