class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds

  has_secure_password

end
