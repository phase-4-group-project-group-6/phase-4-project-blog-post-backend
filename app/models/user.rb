class User < ApplicationRecord
  has_secure_password
  
  has_one :user_profile

  has_many :comments
  has_many :user_posts, through: :comments

end
