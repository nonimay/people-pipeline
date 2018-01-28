require 'rails_helper'

RSpec.describe Candidate, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :education }
  it { should validate_presence_of :email }
  it { should validate_presence_of :telephone }
  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :country }
  it { should validate_presence_of :postcode }

  it { should belong_to :education }

end
