require 'spec_helper'

describe Inventory do
  context 'validations' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
    it { should_not allow_mass_assignment_of(:user) }
    it { should_not allow_mass_assignment_of(:user_id) }
  end

  context 'factories' do
    it { should have_valid_factory(:inventory) }
  end
end
