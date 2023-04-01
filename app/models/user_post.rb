class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  has_many :comments
  has_many :users, through: :comments

  validates :title, {
    length: { minimum: 5, maximum: 15 },
    uniqueness: true,
    presence: true,
  }

  validates :content, {
    length: { minimum: 10 },
    presence: true,
  }
end
