require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
  describe 'associations' do
    it { should have_many(:user_attribute_values) }
    it { should have_many(:user_event_registrations) }
  end
  describe 'admins' do
    it 'should be a scope' do
      ["jojo@jojo.com", "toto@toto.com", "momo@momo.com"].each do |email|
        User.create!(email: email, password: "secret", admin: false)
      end
      ["riri@riri.com", "fifi@fifi.com", "loulou@loulou.com"].each do |email|
        User.create!(email: email, password: "secret", admin: true)
      end
      expect(User.admins).to_not eq(User.where(admin: false))
    end
  end
  User.destroy_all
end
