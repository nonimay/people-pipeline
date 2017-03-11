class Contact < ApplicationRecord
  has_one :candidate

  validates :email, presence: true
  validates :telephone, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :postcode, presence: true
end
