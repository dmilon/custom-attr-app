class User < ApplicationRecord
  has_many :user_attribute_values
  validates :email, :password, presence: true
end
