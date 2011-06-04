class Item < ActiveRecord::Base
  attr_accessible :title

  belongs_to :inventory
  has_one :description, :as => :describable, :dependent => :destroy

  validates :title, :presence => true

  after_create :create_description

  def create_description
    description = Description.new
    description.describable = self
    description.save!
    self.reload
  end
end
