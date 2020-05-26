class EventAttribute < ApplicationRecord
  DATA_TYPES = ["text", "boolean"]
  has_many :event_attribute_values
  validates :name, :required, presence: true
  validates :data_type, inclusion: { in: DATA_TYPES }
end
