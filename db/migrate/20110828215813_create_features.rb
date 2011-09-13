class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.integer :feature_category_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
