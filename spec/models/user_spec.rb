require 'spec_helper'

describe User do
  context 'validations' do
    it { should allow_mass_assignment_of(:email) }
    it { should allow_mass_assignment_of(:password) }
    it { should allow_mass_assignment_of(:password_confirmation) }
    it { should allow_mass_assignment_of(:remember_me) }
    it { should belong_to(:location) }
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
end
