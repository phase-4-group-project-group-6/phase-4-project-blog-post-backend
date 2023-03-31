class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :post
  

  has_many :comments
  has_many :users, through: :comments
end
