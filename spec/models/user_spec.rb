require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }

  it 'should only validate with legitimate email address' do
    user = User.new(name: "John Smith", email: "john.smith@test,com")
    expect(user).to be_invalid

  end

end
