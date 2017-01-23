class User < ApplicationRecord

  before_save { self.email = email.downcase }

  validates :name,
    presence: true
  validates :email,
    presence: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    uniqueness: { case_sensitive: false }
end
