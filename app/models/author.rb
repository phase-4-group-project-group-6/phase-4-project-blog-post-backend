class Author < ApplicationRecord

  has_many :posts

  validates :name, {
    length: { minimum: 5, maximum: 8 },
    uniqueness: true,
    presence: true
  }

  validates :image, {
    presence: true
  }

  validates :location, {
    presence: true
  }

end
