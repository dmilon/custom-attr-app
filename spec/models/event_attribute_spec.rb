require 'rails_helper'

RSpec.describe EventAttribute, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_inclusion_of(:data_type).in_array(["text", "boolean"]) }
    it { should validate_presence_of(:required) }
  end
  describe 'associations' do
    it { should have_many(:user_event_attribute_values) }
  end
end
