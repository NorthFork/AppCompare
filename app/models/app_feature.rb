class AppFeature < ActiveRecord::Base
  belongs_to :app
  belongs_to :feature
  belongs_to :feature_status
  belongs_to :source
  #validates :name, :presence => true,
  #  :length => {:minimum => 3, :maximum => 130}
  validates_presence_of :app
  validates_presence_of :feature
  validates_presence_of :feature_status
  validates_associated :source
end
