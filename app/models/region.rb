class Region < ActiveRecord::Base
  attr_accessible :name, :country_id

  belongs_to :country
  has_many :locations
  has_many :users, :through => :locations

  validates :name, :country, :presence => true
end
