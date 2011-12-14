class CreateAppFeatures < ActiveRecord::Migration
  def change
    create_table :app_features do |t|
      t.integer :app_id
      t.integer :feature_id
      t.integer :feature_status_id
      t.integer :source_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
