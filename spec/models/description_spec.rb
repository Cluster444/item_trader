require 'spec_helper'

describe Description do
  context 'attributes' do
    it { should allow_mass_assignment_of(:body) }
  end

  context 'associations' do
    it { should belong_to(:describable) }
  end

  context 'validations' do
    it { should ensure_length_of(:body).is_at_least(0).is_at_most(8096) }
  end

  context 'factories' do
    it { should have_valid_factory(:description) }
  end

  context '#valid?' do
    it 'should ensure the body is not nil when validating' do
      description = Description.new
      description.save.should be_true
    end
  end
end
