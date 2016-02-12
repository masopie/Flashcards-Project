class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :decks

  validates :username, :email, presence: true

  has_secure_password

end
