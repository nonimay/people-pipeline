require 'rails_helper'

RSpec.describe EmploymentStatus, type: :model do

  it { should validate_presence_of :status }
  it { should have_many :candidates }
  
end
