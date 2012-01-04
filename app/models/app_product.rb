class AppProduct < ActiveRecord::Base
  belongs_to :app
  belongs_to :product
  belongs_to :min_app_version, :class_name => 'AppVersion' , :foreign_key => 'min_appversion_id'
  belongs_to :max_app_version, :class_name => 'AppVersion' , :foreign_key => 'max_appversion_id'
#  belongs_to :app_version, :class_name => 'min_app_version', :foreign_key => 'min_app_version_id'
#  belongs_to :app_version, :class_name => 'max_app_version', :foreign_key => 'max_app_version_id'
  validates_presence_of :app
  validates_presence_of :product
end
