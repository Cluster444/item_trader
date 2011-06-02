require 'spec_helper'

describe Country do
  context 'validations' do
    it { should allow_mass_assignment_of(:name) }
    it { should validate_presence_of(:name) }
  end

  context 'factories' do
    it { should have_valid_factory(:country) }
  end
end
