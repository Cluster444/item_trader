class Inventory < ActiveRecord::Base
  attr_protected :user, :user_id

  belongs_to :user

  validates :user, :presence => true
end
