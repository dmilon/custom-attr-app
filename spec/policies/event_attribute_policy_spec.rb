require 'rails_helper'

RSpec.describe EventAttributePolicy, type: :policy do
  let(:user) { User.new }

  subject { described_class }

  permissions :show?, :index?, :new?, :create?, :edit?, :update?, :destroy? do
    it "denies access if user is not an admin" do
      expect(subject).not_to permit(User.new(admin: false))
    end
    it "grants access if user is an admin" do
      expect(subject).to permit(User.new(admin: true))
    end
  end
end
