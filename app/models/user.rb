class User < ActiveRecord::Base

  has_secure_password

  has_many :reviews

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
