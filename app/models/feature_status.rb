class FeatureStatus < ActiveRecord::Base
  has_many :app_features
  validates :name, :presence => true,
	  :length => {:minimum => 2, :maximum => 30}
  validates_uniqueness_of :name, :case_sensitive => false
end
