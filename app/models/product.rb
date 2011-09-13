class Product < ActiveRecord::Base
  belongs_to :vendor
  has_many :app_products
  has_many :apps, :through => :app_products
  belongs_to :app_version, :class_name => 'min_app_version_id', :foreign_key => 'app_version_id'
  belongs_to :app_version, :class_name => 'max_app_version_id', :foreign_key => 'app_version_id'
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
  validates :vendor_id, :presence => true
end
