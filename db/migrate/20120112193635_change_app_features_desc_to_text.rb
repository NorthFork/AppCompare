class ChangeAppFeaturesDescToText < ActiveRecord::Migration
  def up
    change_column :app_features, :description, :text
  end

  def down
    change_column :app_features, :description, :string
  end
end
