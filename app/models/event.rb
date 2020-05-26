class Event < ApplicationRecord
  has_many :user_event_registrations
  validates :name, presence: true
end
