class Location < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region
  has_one :country, :through => :region
  has_many :users

  validates :name, :region, :presence => true
end
