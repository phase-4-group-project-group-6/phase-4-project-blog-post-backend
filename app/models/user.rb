class User < ApplicationRecord
  has_secure_password

  has_one :user_profile

  has_many :comments
  has_many :user_posts, through: :comments


  validates :username, {
    length: { minimum: 5, maximum: 8 },
    uniqueness: true,
    presence: true
}

validates :email, {
    uniqueness: true,
    presence: true
}


end
