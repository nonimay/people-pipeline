class Candidate < ApplicationRecord
  validates :name, presence: true

  belongs_to :education
  belongs_to :contact
end
