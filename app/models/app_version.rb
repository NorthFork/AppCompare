class AppVersion < ActiveRecord::Base
  belongs_to :app
  has_many :app_products, :foreign_key => 'min_app_version_id', :dependent => :nullify
  has_many :app_products, :foreign_key => 'max_app_version_id', :dependent => :nullify
  validates :name, :presence => true,
	:length => {:minimum => 1, :maximum => 10}
  validates :app_id, :presence => true
end
