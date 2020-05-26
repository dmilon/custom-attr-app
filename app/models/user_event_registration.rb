class UserEventRegistration < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :event_attribute_values
end
