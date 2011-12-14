class CreateAppProducts < ActiveRecord::Migration
  def change
    create_table :app_products do |t|
      t.integer :app_id
      t.integer :product_id
      t.integer :min_appversion_id
      t.integer :max_appversion_id
      t.text :whoisusing

      t.timestamps
    end
  end
end
