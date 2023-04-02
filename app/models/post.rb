class Post < ApplicationRecord

  belongs_to :user
  has_many :user_posts

  validates :title, {
    length: { minimum: 5, maximum: 15 },
    presence: true
  }

  validates :description, {
    length: { minimum: 10 },
    presence: true
  }
end
