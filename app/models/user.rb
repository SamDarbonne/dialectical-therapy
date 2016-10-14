class User < ApplicationRecord
  has_secure_password
  has_many :events
<<<<<<< HEAD

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, uniqueness:true
  validates :user_name, uniqueness:true
=======
  def self.confirm params
  	@user = User.find_by({user_name: params[:user_name]})
  	@user ? @user.authenticate(params[:password]) : false
  end
>>>>>>> 276cd27540703369927948a2208deb924279b1a3
end
