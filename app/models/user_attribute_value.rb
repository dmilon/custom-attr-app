class UserAttributeValue < ApplicationRecord
  belongs_to :user
  belongs_to :user_attribute
  validates :value, presence: true
end
