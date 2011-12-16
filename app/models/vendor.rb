class Vendor < ActiveRecord::Base
  has_many :products
  validates :name, :presence => true,
    :length => {:minimum => 3, :maximum => 30}
  validates_uniqueness_of :name, :case_sensitive => false
end
