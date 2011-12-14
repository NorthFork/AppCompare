#(To get console view of app, "rails console" when you are in the app directory is what you need to do)
rails new AppComp
cd AppComp
bundle install
rake db:create

rails generate controller home index

rails generate scaffold App name:string description:string url:string
rails generate scaffold AppVersion app_id:integer name:string description:string 

rails generate scaffold FeatureCategory name:string description:string
rails generate scaffold Feature feature_category_id:integer name:string description:string
rails generate scaffold FeatureStatus name:string description:string
rails generate scaffold Source name:string description:string url:string
rails generate scaffold AppFeature app_id:integer feature_id:integer feature_status_id:integer source_id:integer name:string description:string 
rails generate scaffold Vendor name:string description:string url:string phone:string contact:string
rails generate scaffold Product vendor_id:integer name:string description:string url:string
rails generate scaffold AppProduct app_id:integer product_id:integer min_appversion_id:integer max_appversion_id:integer whoisusing:text

rails generate scaffold User email:string first_name:string last_name:string password_digest:string auth_token:string is_admin:boolean deleted_at:datetime
#open models
##add validation for name to app, app_version, feature, feature_category, feature_status, tool, vendor
  validates :name, :presence => true,
	:length => {:minimum => 3, :maximum => 30}

##add associations

rake db:migrate


