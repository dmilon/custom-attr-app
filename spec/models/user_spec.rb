require 'rails_helper'
# bundle exec rspec spec/models
RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
  describe 'associations' do
    it { should have_many(:user_attribute_values) }
    it { should have_many(:user_event_registrations) }
  end
end
