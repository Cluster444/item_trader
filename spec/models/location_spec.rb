require 'spec_helper'

describe Location do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should allow_mass_assignment_of(:region_id) }
    it { should belong_to(:region) }
    it { should have_one(:country).through(:region) }
    it { should have_many(:users) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:region) }
  end

  context 'factories' do
    it { should have_valid_factory(:location) }
  end
end
