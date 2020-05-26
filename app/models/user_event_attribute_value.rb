class UserEventAttributeValue < ApplicationRecord
  belongs_to :user_event_registration
  belongs_to :event_attribute
  validates :value, presence: true
end
