require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }

  describe 'email validation' do

    before :each do
      @user = User.new(name: 'John Smith', email: 'john.smith@test.com')
      @user.save
    end

    it 'should only validate with legitimate email address' do
      @user.email = 'john.smith@test,com'
      expect(@user).to be_invalid
    end

    it 'should reject duplicate email addresses' do
      duplicate_user = @user.dup
      expect(duplicate_user).to be_invalid
    end

    it 'should reject duplicate email addresses regardless of case' do
      duplicate_user = @user.dup
      duplicate_user.email = duplicate_user.email.upcase
      expect(duplicate_user).to be_invalid
    end
  end

end
