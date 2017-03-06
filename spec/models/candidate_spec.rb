require 'rails_helper'

RSpec.describe Candidate, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :phone }

  it { should belong_to :education }

end
