require 'rails_helper'

RSpec.describe UserAttribute, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_inclusion_of(:data_type).in_array(["text", "boolean"]) }
    it { should validate_presence_of(:required) }
    it { should validate_presence_of(:profile) }
    it { should validate_presence_of(:signup) }
  end
  describe 'associations' do
    it { should have_many(:user_attribute_values) }
  end
end
