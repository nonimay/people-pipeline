require 'rails_helper'

RSpec.describe Education, type: :model do
  it { should validate_presence_of :level }
  it { should validate_presence_of :qualification }
  it { should have_many :candidates }
end
