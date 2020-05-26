require 'rails_helper'

RSpec.describe UserEventAttributeValue, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:value) }
  end
  describe 'associations' do
    it { should belong_to(:user_event_registration) }
    it { should belong_to(:event_attribute) }
  end
end
