class User < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :patients, class_name: "User", foreign_key: "professional_id"
  belongs_to :professional, class_name: "User", optional: true


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :user_name, uniqueness: true, presence: true

  def self.confirm params
  	@user = User.find_by({user_name: params[:user_name]})
  	@user ? @user.authenticate(params[:password]) : false
  end
  def to_label
    return self.first_name + " " + self.last_name
  end
end
