class Country < ActiveRecord::Base
  attr_accessible :name

  has_many :regions
  
  validates :name, :presence => true
end
