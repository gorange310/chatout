class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :username, presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 3, maximum: 30 }
  has_secure_password
end
