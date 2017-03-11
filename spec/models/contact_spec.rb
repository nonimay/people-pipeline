require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should have_one :candidate }
  it { should validate_presence_of :email }
  it { should validate_presence_of :telephone }
  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :country }
  it { should validate_presence_of :postcode }
end
