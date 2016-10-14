class User < ApplicationRecord
  has_secure_password
  has_many :events

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true, presence: true
  validates :user_name, uniqueness: true, presence: true

  def self.confirm params
  	@user = User.find_by({user_name: params[:user_name]})
  	@user ? @user.authenticate(params[:password]) : false
  end
end
