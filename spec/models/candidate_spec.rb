require 'rails_helper'

RSpec.describe Candidate, type: :model do

  it { should validate_presence_of :name }

  it { should belong_to :education }
  it { should belong_to :contact }

end
