#(To get console view of app, "rails console" when you are in the app directory is what you need to do)
rails new AppCompare
cd AppCompare
bundle install
rake db:create

rails generate controller home index

rails generate scaffold App name:string description:string URL:string
rails generate scaffold AppVersion app_id:integer name:string description:string 

rails generate scaffold FeatureCategory name:string description:string
rails generate scaffold Feature feature_category_id:integer name:string description:string
rails generate scaffold FeatureStatus name:string description:string
rails generate scaffold AppFeature app_id:integer feature_id:integer feature_status_id:integer name:string description:string 
rails generate scaffold Vendor name:string description:string URL:string phone:string contact:string
rails generate scaffold Product vendor_id:integer name:string description:string URL:string
rails generate scaffold AppProduct app_id:integer product_id:integer min_app_version_id:integer max_app_version_id:integer whoisusing:text

#open models
##add validation for name to app, app_version, feature, feature_category, feature_status, product, vendor
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}

##add associations

rake db:migrate

