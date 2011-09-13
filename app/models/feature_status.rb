class FeatureStatus < ActiveRecord::Base
  has_many :app_features
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
end
