class Region < ActiveRecord::Base
  attr_accessible :name, :country_id

  belongs_to :country

  validates :name, :country, :presence => true
end
