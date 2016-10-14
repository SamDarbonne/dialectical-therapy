class User < ApplicationRecord
  has_secure_password
  has_many :events

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, uniqueness:true
  validates :user_name, uniqueness:true
end
