class Candidate < ApplicationRecord

  belongs_to :education
  belongs_to :pipeline_status

  validates :name, presence: true
  validates :education, presence: true
  validates :pipeline_status, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :postcode, presence: true

end
