require 'spec_helper'

describe Item do
  context 'attributes' do
    it { should allow_mass_assignment_of(:title) }
  end

  context 'associations' do
    it { should belong_to(:inventory) }
    it { should have_one(:description).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }
  end

  context 'factories' do
    it { should have_valid_factory(:item) }
  end

  context '#create' do
    it 'should create a description for the item' do
      item = Factory(:item)
      item.description.should_not be_nil
    end
  end
end
