class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :vendor_id
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
