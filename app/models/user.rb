class User < ActiveRecord::Base
  has_many :posts
  validates :posts,
  :email,
  :first_name,
  :last_name,
  :password,
  :username,
  presence, true
end
