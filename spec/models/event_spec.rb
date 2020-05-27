require 'rails_helper'

RSpec.describe Event, type: :model do
  it "with a name should be valid" do
    expect(Event.new(name: "Sunday's Bingo")).to be_valid
  end
  describe 'associations' do
    it { should have_one(:user_event_registration) }
  end
end
