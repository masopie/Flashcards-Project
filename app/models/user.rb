class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds

  validates :username, :email, :password, presence: true

  has_secure_password

end
