class CreateAppFeatures < ActiveRecord::Migration
  def self.up
    create_table :app_features do |t|
      t.integer :app_id
      t.integer :feature_id
      t.integer :feature_status_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :app_features
  end
end
