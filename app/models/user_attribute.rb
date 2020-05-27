class UserAttribute < ApplicationRecord
  DATA_TYPES = ["text", "boolean"]

  has_many :user_attribute_values
  validates :name, :required, :profile, :signup, presence: true
  validates :data_type, inclusion: { in: DATA_TYPES }

  scope :profile, -> { where(profile: true) }
  scope :signup, -> { where(signup: true) }
end
