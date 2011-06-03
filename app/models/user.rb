class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :location
  has_one :region, :through => :location
  has_one :country, :through => :location
end
