class PipelineStatus < ApplicationRecord
  validates :status, presence: true
  has_many :candidates
end
