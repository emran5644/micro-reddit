class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
    validates :name, presence: true, uniqueness: true,
               length: { minimum: 3, message: "can't be shorter than 3 characters" }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
end
