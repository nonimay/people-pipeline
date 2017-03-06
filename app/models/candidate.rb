class Candidate < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  belongs_to :education
end
