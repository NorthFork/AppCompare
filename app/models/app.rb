class App < ActiveRecord::Base
  has_many :app_versions
  has_many :app_features
  has_many :app_products
  has_many :features, :through => :app_features
  has_many :versions, :through => :app_versions
  has_many :products, :through => :app_products
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}
end
