class Education < ApplicationRecord
  validates :level, presence: true
  has_many :candidates
end
