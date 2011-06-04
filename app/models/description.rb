class Description < ActiveRecord::Base
  attr_accessible :body

  belongs_to :describable, :polymorphic => true

  before_validation :ensure_body_not_nil

  validates :body, :length => {:within => 0..8096}

  private

  def ensure_body_not_nil
    self.body = '' if self.body.nil?
  end
end
