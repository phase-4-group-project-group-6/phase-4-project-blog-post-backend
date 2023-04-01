class UserProfile < ApplicationRecord
  belongs_to :user


  validates :username, {
    length: { minimum: 5, maximum: 10 },
    uniqueness: true,
    presence: true
  }

  validates :email, {
    uniqueness: true,
    presence: true
  }

  validates :bio, {
    length: { minimum: 10 },
    presence: true
  }


end
