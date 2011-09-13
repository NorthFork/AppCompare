class CreateAppVersions < ActiveRecord::Migration
  def self.up
    create_table :app_versions do |t|
      t.integer :app_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :app_versions
  end
end
