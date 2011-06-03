class Country < ActiveRecord::Base
  attr_accessible :name

  has_many :regions
  has_many :locations, :through => :regions
  has_many :users, :through => :locations
  
  validates :name, :presence => true
end
