class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, allow_nil: true

  has_secure_password
  has_many :results
  has_many :vitals
  has_many :questions
end
