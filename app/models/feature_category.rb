class FeatureCategory < ActiveRecord::Base
  has_many :features
  validates :name, :presence => true,
    :length => {:minimum => 3, :maximum => 50}
  validates_uniqueness_of :name, :case_sensitive => false
end
