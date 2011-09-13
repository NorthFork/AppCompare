class CreateAppProducts < ActiveRecord::Migration
  def self.up
    create_table :app_products do |t|
      t.integer :app_id
      t.integer :product_id
      t.integer :min_app_version_id
      t.integer :max_app_version_id
      t.text :whoisusing

      t.timestamps
    end
  end

  def self.down
    drop_table :app_products
  end
end
