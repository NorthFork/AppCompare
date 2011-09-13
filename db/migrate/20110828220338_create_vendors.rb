class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.string :URL
      t.string :phone
      t.string :contact

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
