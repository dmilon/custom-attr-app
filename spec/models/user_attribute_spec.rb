require 'rails_helper'

RSpec.describe UserAttribute, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_inclusion_of(:data_type).in_array(["text", "boolean"]) }
    it { should validate_presence_of(:required) }
    it { should validate_presence_of(:profile) }
    it { should validate_presence_of(:signup) }
    # it 'at least one of :profile and :signup should be true' do
    #   expect(UserAttribute.new(
    #     name: "donor",
    #     data_type: "boolean",
    #     required: false,
    #     profile: false,
    #     signup: false
    #   )).to raise_error
    # end
  end
  describe 'associations' do
    it { should have_many(:user_attribute_values) }
  end
end

