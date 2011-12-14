class CreateAppVersions < ActiveRecord::Migration
  def change
    create_table :app_versions do |t|
      t.integer :app_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
