require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_length_of(:password).is_at_least(6) }

  describe 'email validation' do

    before :each do
      @user = User.new(name: 'John Smith', email: 'john.smith@test.com', password: "foobar", password_confirmation: "foobar")
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

    it 'should always save emails as downcase' do
      user2 = @user.dup
      user2.email = 'Jane.Smith@test.com'
      user2.save
      expect(user2.email).to eq('jane.smith@test.com')
    end
  end

end
