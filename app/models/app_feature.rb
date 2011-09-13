class AppFeature < ActiveRecord::Base
  belongs_to :app
  belongs_to :feature
  belongs_to :feature_status
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
  validates_presence_of :app
  validates_presence_of :feature
  validates_presence_of :feature_status
end
