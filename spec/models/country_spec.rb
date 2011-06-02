require 'spec_helper'

describe Country do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should validate_presence_of(:name) }
    it { should have_many(:regions) }
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
  end
end
