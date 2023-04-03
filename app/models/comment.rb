class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :user_post

  validates :description, {
    length: { minimum: 10 },
    presence: true
  }
end
