require 'spec_helper'

describe Region do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should allow_mass_assignment_of(:country_id) }
    it { should belong_to(:country) }
    it { should have_many(:locations) }
    it { should have_many(:users).through(:locations) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country) }
  end

  context 'factories' do
    it { should have_valid_factory(:region) }
    it { should have_valid_factory(:region_with_locations) }
    context 'with locations' do
      before(:each) { @region = Factory(:region_with_locations) }

      it 'should have some locations' do
        @region.locations.should_not be_empty
      end
    end
  end
end
