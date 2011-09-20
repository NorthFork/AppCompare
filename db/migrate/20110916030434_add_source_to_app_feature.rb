class AddSourceToAppFeature < ActiveRecord::Migration
  def self.up
    add_column :app_features, :source_id, :integer
  end

  def self.down
    remove_column :app_features, :source_id
  end
end
