class UserAttribute < ApplicationRecord
  DATA_TYPES = ["text", "boolean"]
  validates :name, :required, :profile, :signup, presence: true
  validates :data_type, inclusion: { in: DATA_TYPES }
end
