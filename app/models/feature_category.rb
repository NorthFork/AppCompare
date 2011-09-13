class FeatureCategory < ActiveRecord::Base
  has_many :features
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
end
