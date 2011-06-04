require 'spec_helper'

describe User do
  context 'validations' do
    it { should allow_mass_assignment_of(:email) }
    it { should allow_mass_assignment_of(:password) }
    it { should allow_mass_assignment_of(:password_confirmation) }
    it { should allow_mass_assignment_of(:remember_me) }
    it { should belong_to(:location) }
    it { should have_one(:country).through(:location) }
    it { should have_one(:region).through(:location) }
    it { should have_one(:inventory) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  context 'factories' do
    it { should have_valid_factory(:user) }
    it { should have_valid_factory(:user_with_location) }
    context 'with location' do
      it 'should have a location' do
        @user = Factory(:user_with_location)
        @user.location.should_not be_nil
      end
    end
  end

  context '#create' do
    it 'should create an inventory for the user' do
      user = Factory(:user)
      user.inventory.should_not be_nil
    end
  end
end
