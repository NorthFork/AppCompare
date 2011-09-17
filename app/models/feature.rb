class Feature < ActiveRecord::Base
  belongs_to :feature_category
  has_many :app_features
  has_many :apps, :through => :app_features
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30} , :unique => true
  validates_presence_of :feature_category
  validates_uniqueness_of :name, :case_sensitive => false
end
