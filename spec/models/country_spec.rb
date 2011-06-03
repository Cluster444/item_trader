require 'spec_helper'

describe Country do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should have_many(:regions) }
    it { should have_many(:locations).through(:regions) }
    it { should have_many(:users).through(:locations) }
    it { should validate_presence_of(:name) }
  end

  context 'factories' do
    it { should have_valid_factory(:country) }
    it { should have_valid_factory(:country_with_regions) }
    context 'with regions' do
      before(:each) { @country = Factory(:country_with_regions) }

      it 'should have some regions' do
        @country.regions.should_not be_empty
      end
    end

    it { should have_valid_factory(:country_with_locations) }
    context 'with locations' do
      before(:each) { @country = Factory(:country_with_locations) }
      it 'should have some regions' do
        @country.regions.should_not be_empty
      end

      it 'should have some locations' do
        @country.locations.should_not be_empty
      end
    end
  end
end
