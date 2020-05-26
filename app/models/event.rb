class Event < ApplicationRecord
  has_one :user_event_registration
  validates :name, presence: true
end
