class Education < ApplicationRecord
  validates :level, presence: true
  validates :qualification, presence: true
  has_many :candidates
end
