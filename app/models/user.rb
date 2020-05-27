class User < ApplicationRecord
  has_many :user_attribute_values
  has_many :user_event_registrations
  validates :email, :password, presence: true

  scope :admins, -> { where(admin: true) }
end
