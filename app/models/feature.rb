class Feature < ActiveRecord::Base
  belongs_to :feature_category
  has_many :app_features
  has_many :apps, :through => :app_features
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
  validates :feature_category_id, :presence => true
end
