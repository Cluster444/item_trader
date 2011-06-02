require 'spec_helper'

describe Region do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should allow_mass_assignment_of(:country_id) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country) }
    it { should belong_to(:country) }
  end

  context 'factories' do
    it { should have_valid_factory(:region) }
  end
end
