class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :vendor_id
      t.string :name
      t.string :description
      t.string :URL

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
